from flask_sqlalchemy import SQLAlchemy #pip install -U Flask-SQLAlchemy
from datetime import datetime

db = SQLAlchemy()


class Patient(db.Model):
    __tablename__ = "patient"

    id = db.Column(db.String(36), primary_key=True)  # UUID
    user_id = db.Column(db.String(36), db.ForeignKey('app_users.id'), nullable=True)
    first_name = db.Column(db.String(100), nullable=False)
    last_name = db.Column(db.String(100), nullable=False)
    date_of_birth = db.Column(db.Date, nullable=False)
    gender = db.Column(db.String(10), nullable=False)
    phone_number = db.Column(db.String(15), nullable=False)
    email = db.Column(db.String(255), unique=True)
    marital_status = db.Column(db.String(20), nullable=False)
    occupation = db.Column(db.String(100))
    nationality = db.Column(db.String(50), nullable=False)
    profile_picture = db.Column(db.LargeBinary, nullable=True)
    user = db.relationship('AppUser', backref=db.backref('patient', lazy=True))

    __table_args__ = (
        db.CheckConstraint(gender.in_(['Male', 'Female']), name='gender_check'),
    )



class AppUser(db.Model):
    __tablename__ = 'app_users'
    id = db.Column(db.String(36), primary_key=True)
    username = db.Column(db.String(100), nullable=False, unique=True)
    password_hash = db.Column(db.Text, nullable=False)
    role = db.Column(db.Enum('admin', 'patient', 'clerk', 'nurse', 'labTech','doctor', name='user_roles'), nullable=False)
    is_active = db.Column(db.Boolean, default=True)
    last_login = db.Column(db.DateTime)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)


class OrganizationStaff(db.Model):
    __tablename__ = 'organization_staff'
    id = db.Column(db.String(36), primary_key=True)
    user_id = db.Column(db.String(36), db.ForeignKey('app_users.id', ondelete='SET NULL'))
    first_name = db.Column(db.String(100), nullable=False)
    last_name = db.Column(db.String(100), nullable=False)
    role = db.Column(db.String(100))
    department = db.Column(db.String(100))
    email = db.Column(db.String(255), unique=True)
    phone_number = db.Column(db.String(20))
    employment_type = db.Column(db.Enum('Full-time', 'Part-time', 'Contract', name='employment_types'))
    date_of_joining = db.Column(db.Date)
    is_active = db.Column(db.Boolean, default=True)
    salary = db.Column(db.Numeric(10, 2))
    shift = db.Column(db.String(50))
    supervisor_id = db.Column(db.String(36), db.ForeignKey('organization_staff.id', ondelete='SET NULL'))
    address = db.Column(db.Text)
    emergency_contact = db.Column(db.Text)  # JSON format
    profile_picture = db.Column(db.LargeBinary, nullable=True)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    supervisor = db.relationship('OrganizationStaff', remote_side=[id], backref='subordinates')
    user = db.relationship('AppUser', backref='staff')

class PatientDiagnosis(db.Model):
    __tablename__ = "patient_diagnosis"

    id = db.Column(db.String(36), primary_key=True)  # UUID
    patient_id = db.Column(db.String(36), db.ForeignKey('patient.id'), nullable=False)
    doctor_id = db.Column(db.String(36), db.ForeignKey('organization_staff.id'))
    diagnosis_code = db.Column(db.String(20))
    diagnosis_date = db.Column(db.Date, nullable=False)
    status = db.Column(db.String(20), nullable=False)
    notes = db.Column(db.Text)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    final_diagnosis = db.Column(db.Text)

    # Relationships
    patient = db.relationship('Patient', backref=db.backref('patient_diagnoses', lazy=True))
    doctor = db.relationship('OrganizationStaff', backref=db.backref('doctor_diagnoses', lazy=True))
    test_requests = db.relationship('LaboratoryTestRequest', backref='diagnosis_for_test_requests', lazy=True)

class LaboratoryTestRequest(db.Model):
    __tablename__ = "laboratory_test_requests"

    id = db.Column(db.String(36), primary_key=True)  # UUID
    diagnosis_id = db.Column(db.String(36), db.ForeignKey('patient_diagnosis.id'), nullable=False)
    test_type = db.Column(db.String(36), nullable=False)
    test_details = db.Column(db.Text)
    priority_level = db.Column(db.Enum('Low', 'Normal', 'High', 'Urgent', name='priority_levels'), nullable=False)
    status = db.Column(db.Enum('Pending', 'In Progress', 'Completed', 'Cancelled', name='test_status'), nullable=False)
    requested_at = db.Column(db.DateTime, default=datetime.utcnow)
    completed_at = db.Column(db.DateTime)
    comments = db.Column(db.Text)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    # Updated relationship with a unique backref name
    diagnosis = db.relationship('PatientDiagnosis', backref=db.backref('test_requests_for_diagnosis', lazy=True))

class PatientPrescription(db.Model):
    __tablename__ = "patient_prescriptions"
    
    id = db.Column(db.String(36), primary_key=True)  # UUID
    diagnosis_id = db.Column(db.String(36), db.ForeignKey('patient_diagnosis.id'), nullable=False)  # Corrected foreign key
    medication = db.Column(db.String(500), nullable=True)  # Optional medication name
    dosage = db.Column(db.String(100), nullable=False)
    duration = db.Column(db.String(50), nullable=False)
    frequency = db.Column(db.String(50), nullable=False)
    route_of_administration = db.Column(db.Enum('Oral', 'Injection', 'Topical', 'Intravenous', 'Other'), nullable=False)
    start_date = db.Column(db.Date, nullable=False)
    end_date = db.Column(db.Date, nullable=True)
    instructions = db.Column(db.Text, nullable=True)
    prescribed_at = db.Column(db.DateTime, nullable=False, server_default=db.func.current_timestamp())
    updated_at = db.Column(db.DateTime, nullable=False, server_default=db.func.current_timestamp(), onupdate=db.func.current_timestamp())
    status = db.Column(db.Enum('Active', 'Discontinued', 'Completed'), nullable=False, default='Active')

class PatientRecommendation(db.Model):
    __tablename__ = "patient_recommendations"
    
    id = db.Column(db.String(36), primary_key=True)  # UUID
    diagnosis_id = db.Column(db.String(36), db.ForeignKey('patient_diagnosis.id'), nullable=False)  # Corrected foreign key
    recommendation_type = db.Column(db.String(255), nullable=True)
    recommendation_text = db.Column(db.Text, nullable=False)
    date_recommended = db.Column(db.TIMESTAMP, default=datetime.utcnow)
    updated_at = db.Column(db.TIMESTAMP, default=datetime.utcnow, onupdate=datetime.utcnow)
    comments = db.Column(db.Text, nullable=True)
    
    # Relationship to Diagnosis model
    diagnosis = db.relationship('PatientDiagnosis', backref='patient_recommendations')

class FollowUpQuestion(db.Model):
    __tablename__ = "follow_up_questions"
    
    id = db.Column(db.String(36), primary_key=True)  # UUID
    parent_id = db.Column(db.String(36), db.ForeignKey('follow_up_questions.id'), nullable=True)
    category = db.Column(db.String(100), nullable=False)
    question = db.Column(db.Text, nullable=False)
    answer = db.Column(db.Text, nullable=True)
    is_required = db.Column(db.Boolean, nullable=False, default=False)
    context_id = db.Column(db.String(36), db.ForeignKey('patient_diagnosis.id'), nullable=False)  # Corrected foreign key
    priority_level = db.Column(db.Integer, nullable=False, default=2)
    created_at = db.Column(db.DateTime, nullable=False, server_default=db.func.current_timestamp())
    updated_at = db.Column(db.DateTime, nullable=False, server_default=db.func.current_timestamp(), onupdate=db.func.current_timestamp())
    status = db.Column(db.Enum('pending', 'answered', 'closed'), nullable=False, default='pending')