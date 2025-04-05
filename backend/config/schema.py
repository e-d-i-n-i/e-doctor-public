import base64
from flask_marshmallow import Marshmallow
from marshmallow import fields

ma = Marshmallow()

class Base64Field(fields.Field):
    """Custom field to serialize binary data as Base64."""

    def _serialize(self, value, attr, obj, **kwargs):
        if value is None:
            return None
        return base64.b64encode(value).decode('utf-8')

class AppUserSchema(ma.Schema):
    class Meta:
        fields = ('id', 'username', 'role', 'is_active', 'last_login', 'created_at', 'updated_at')

app_user_schema = AppUserSchema()
app_users_schema = AppUserSchema(many=True)

class OrganizationStaffSchema(ma.Schema):
    class Meta:
        fields = ('id', 'user_id', 'first_name', 'last_name', 'role', 'department', 'email', 'phone_number',
                  'employment_type', 'date_of_joining', 'is_active', 'salary', 'shift', 'supervisor_id',
                  'address', 'emergency_contact', 'profile_picture', 'updated_at')

    # Override the profile_picture field to use the custom Base64Field
    profile_picture = Base64Field(attribute='profile_picture')

organization_staff_schema = OrganizationStaffSchema()
organization_staffs_schema = OrganizationStaffSchema(many=True)

class PatientDiagnosisSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        # model = PatientDiagnosis
        fields = (
            'id', 'patient_id', 'doctor_id', 'diagnosis_code', 'diagnosis_date',
            'status', 'notes', 'created_at', 'updated_at', 'final_diagnosis'
        )

patient_diagnosis_schema = PatientDiagnosisSchema()
patient_diagnoses_schema = PatientDiagnosisSchema(many=True)

class LaboratoryTestRequestSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        # model = LaboratoryTestRequest  # Ensure the model is linked
        fields = ('id', 'diagnosis_id', 'test_type', 'test_details', 'priority_level', 'status', 'requested_at', 'completed_at', 'comments', 'updated_at')

laboratory_test_request_schema = LaboratoryTestRequestSchema()
laboratory_test_requests_schema = LaboratoryTestRequestSchema(many=True)

class PatientPrescriptionSchema(ma.Schema):
    class Meta:
        fields = (
            'id', 'diagnosis_id', 'medication', 'dosage', 
            'duration', 'frequency', 'route_of_administration', 
            'start_date', 'end_date', 'instructions', 
            'prescribed_at', 'updated_at', 'status'
        )

patient_prescription_schema = PatientPrescriptionSchema()
patient_prescriptions_schema = PatientPrescriptionSchema(many=True)


class FollowUpQuestionSchema(ma.Schema):
    class Meta:
        fields = (
            'id', 'parent_id', 'category', 'question', 'answer', 
            'is_required', 'context_id', 'priority_level', 
            'created_at', 'updated_at', 'status'
        )

follow_up_question_schema = FollowUpQuestionSchema()
follow_up_questions_schema = FollowUpQuestionSchema(many=True)

class PatientRecommendationSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        fields = ('id', 'diagnosis_id', 'recommendation_type', 'recommendation_text', 'date_recommended', 'updated_at', 'comments')

patient_recommendation_schema = PatientRecommendationSchema()
patient_recommendations_schema = PatientRecommendationSchema(many=True)
