import base64
from datetime import date, datetime
from decimal import Decimal
import json
import re
import uuid
from venv import logger
from flask import Blueprint, jsonify, request
from flask_bcrypt import Bcrypt
from flask_jwt_extended import jwt_required
from sqlalchemy import text
from sqlalchemy.exc import SQLAlchemyError
from config.model import AppUser, FollowUpQuestion, LaboratoryTestRequest, PatientPrescription, PatientRecommendation, db
from utils.utils import validate_password

from config.schema import (
    follow_up_questions_schema, laboratory_test_requests_schema, patient_prescriptions_schema
)

# Initialize Bcrypt for password hashing
bcrypt = Bcrypt()

bp_administrator = Blueprint('Administrator', __name__)

#--------------------------------- READ OPERATIONS --------------------------------------------------------------------
@bp_administrator.route('/GetAdminUsers', methods=['GET'])
def GetAdminUsers():
    from sqlalchemy.exc import SQLAlchemyError
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetAdminUsers()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary
        patient_records = [dict(zip(column_names, row)) for row in records]

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500    

@bp_administrator.route('/GetDoctorUsers', methods=['GET'])
def GetDoctorUsers():
    from sqlalchemy.exc import SQLAlchemyError
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetDoctorUsers()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary
        patient_records = [dict(zip(column_names, row)) for row in records]

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500    


@bp_administrator.route('/GetAllInactiveOrganizationUsers', methods=['GET'])
@jwt_required()
def GetAllInactiveOrganizationUsers():
    from sqlalchemy.exc import SQLAlchemyError
    import base64  # Import base64 for encoding

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetAllInactiveOrganizationUsers()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        user_records = []
        for row in records:
            user = dict(zip(column_names, row))
            if user.get("profile_picture"):
                user["profile_picture"] = base64.b64encode(user["profile_picture"]).decode("utf-8")
            user_records.append(user)

        return jsonify(user_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500
    

@bp_administrator.route('/GetAllActiveOrganizationUsers', methods=['GET'])
@jwt_required()
def GetAllActiveOrganizationUsers():
    from sqlalchemy.exc import SQLAlchemyError
    import base64  # Import base64 for encoding

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetAllActiveOrganizationUsers()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        user_records = []
        for row in records:
            user = dict(zip(column_names, row))
            if user.get("profile_picture"):
                user["profile_picture"] = base64.b64encode(user["profile_picture"]).decode("utf-8")
            user_records.append(user)

        return jsonify(user_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500
    

@bp_administrator.route('/GetOrganizationUserById/<string:p_staff_id>', methods=['GET'])
def GetOrganizationUserById(p_staff_id):
    try:
        result = db.session.execute(
            text("CALL GetOrganizationUserById(:p_staff_id)"),
            {"p_staff_id": p_staff_id}
        )
        records = result.fetchall()  # Fetch all records as a list
        column_names = result.keys()

        if not records:
            return jsonify({"message": "Data not found."}), 404

        # Create a list of dictionaries for the records
        patients = []
        for row in records:
            patient = dict(zip(column_names, row))
            # Encode the profile_picture field as base64
            if patient.get("profile_picture"):
                patient["profile_picture"] = base64.b64encode(patient["profile_picture"]).decode("utf-8")
            patients.append(patient)

        return jsonify(patients), 200  # Return as a JSON array
    except SQLAlchemyError as e:
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while retrieving the user.", "details": error_message}), 500

@bp_administrator.route('/GetPatientById/<string:p_patient_id>', methods=['GET'])
def GetPatientById(p_patient_id):
    try:
        result = db.session.execute(
            text("CALL GetPatientById(:p_patient_id)"),
            {"p_patient_id": p_patient_id}
        )
        records = result.fetchall()  # Fetch all records as a list
        column_names = result.keys()

        if not records:
            return jsonify({"message": "Data not found."}), 404

        # Create a list of dictionaries for the records
        patients = []
        for row in records:
            patient = dict(zip(column_names, row))
            # Encode the profile_picture field as base64
            if patient.get("profile_picture"):
                patient["profile_picture"] = base64.b64encode(patient["profile_picture"]).decode("utf-8")
            patients.append(patient)

        return jsonify(patients), 200  # Return as a JSON array
    except SQLAlchemyError as e:
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while retrieving the patient.", "details": error_message}), 500

@bp_administrator.route('/GetAllPatients', methods=['GET'])
@jwt_required()
def GetAllPatients():
    from sqlalchemy.exc import SQLAlchemyError
    import base64  # Import base64 for encoding

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetAllPatients()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_records = []
        for row in records:
            patient = dict(zip(column_names, row))
            if patient.get("profile_picture"):
                patient["profile_picture"] = base64.b64encode(patient["profile_picture"]).decode("utf-8")
            patient_records.append(patient)

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500


@bp_administrator.route('/GetAllActivePatients', methods=['GET'])
@jwt_required()
def GetAllActivePatients():
    from sqlalchemy.exc import SQLAlchemyError
    import base64  # Import base64 for encoding

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetAllActivePatients()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_records = []
        for row in records:
            patient = dict(zip(column_names, row))
            if patient.get("profile_picture"):
                patient["profile_picture"] = base64.b64encode(patient["profile_picture"]).decode("utf-8")
            patient_records.append(patient)

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/GetAllInactivePatients', methods=['GET'])
@jwt_required()
def GetAllInactivePatients():
    from sqlalchemy.exc import SQLAlchemyError
    import base64  # Import base64 for encoding

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetAllInactivePatients()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_records = []
        for row in records:
            patient = dict(zip(column_names, row))
            if patient.get("profile_picture"):
                patient["profile_picture"] = base64.b64encode(patient["profile_picture"]).decode("utf-8")
            patient_records.append(patient)

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/GetAllBlockedPatients', methods=['GET'])
@jwt_required()
def GetAllBlockedPatients():
    from sqlalchemy.exc import SQLAlchemyError
    import base64  # Import base64 for encoding

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetAllBlockedPatients()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_records = []
        for row in records:
            patient = dict(zip(column_names, row))
            if patient.get("profile_picture"):
                patient["profile_picture"] = base64.b64encode(patient["profile_picture"]).decode("utf-8")
            patient_records.append(patient)

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/GetActivePatientContext', methods=['GET'])
@jwt_required()
def GetActivePatientContext():
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetActivePatientContext()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_records = []
        for row in records:
            patient = dict(zip(column_names, row))
            if patient.get("profile_picture"):
                patient["profile_picture"] = base64.b64encode(patient["profile_picture"]).decode("utf-8")
            patient_records.append(patient)

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/GetCompletedPatientContext', methods=['GET'])
@jwt_required()
def GetCompletedPatientContext():
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetCompletedPatientContext()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_records = []
        for row in records:
            patient = dict(zip(column_names, row))
            if patient.get("profile_picture"):
                patient["profile_picture"] = base64.b64encode(patient["profile_picture"]).decode("utf-8")
            patient_records.append(patient)

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/PatientContextByDiagnosisId', methods=['GET'])
@jwt_required()
def get_patient_context_by_diagnosis_id():
    diagnosis_id = request.args.get('diagnosis_id')  # Get diagnosis_id from query params

    if not diagnosis_id:
        return jsonify({"error": "diagnosis_id is required"}), 400

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL PatientContextByDiagnosisId(:diagnosis_id)"),
            {"diagnosis_id": diagnosis_id}
        )
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_contexts = []
        for row in records:
            context = dict(zip(column_names, row))
            if context.get("profile_picture"):
                context["profile_picture"] = base64.b64encode(context["profile_picture"]).decode("utf-8")
            patient_contexts.append(context)

        return jsonify(patient_contexts), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/PatientContextByDiagnosisId2/<string:diagnosis_id>', methods=['GET'])
def get_patient_context_by_diagnosis_id2(diagnosis_id):
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL PatientContextByDiagnosisId(:diagnosis_id)"),
            {"diagnosis_id": diagnosis_id}
        )
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_contexts = []
        for row in records:
            context = dict(zip(column_names, row))
            if context.get("profile_picture"):
                context["profile_picture"] = base64.b64encode(context["profile_picture"]).decode("utf-8")
            patient_contexts.append(context)

        return jsonify(patient_contexts), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/ActivePatientContextByDoctorId', methods=['GET'])
@jwt_required()
def get_active_patient_context_by_doctor_id():
    doctor_id = request.args.get('doctor_id')  # Get doctor_id from query params

    if not doctor_id:
        return jsonify({"error": "doctor_id is required"}), 400

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL ActivePatientContextByDoctorId(:doctor_id)"),
            {"doctor_id": doctor_id}
        )
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_contexts = []
        for row in records:
            context = dict(zip(column_names, row))
            if context.get("profile_picture"):
                context["profile_picture"] = base64.b64encode(context["profile_picture"]).decode("utf-8")
            patient_contexts.append(context)

        return jsonify(patient_contexts), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/CompletedPatientContextByDoctorId', methods=['GET'])
@jwt_required()
def get_completed_patient_context_by_doctor_id():
    doctor_id = request.args.get('doctor_id')  # Get doctor_id from query params

    if not doctor_id:
        return jsonify({"error": "doctor_id is required"}), 400

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL CompletedPatientContextByDoctorId(:doctor_id)"),
            {"doctor_id": doctor_id}
        )
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_contexts = []
        for row in records:
            context = dict(zip(column_names, row))
            if context.get("profile_picture"):
                context["profile_picture"] = base64.b64encode(context["profile_picture"]).decode("utf-8")
            patient_contexts.append(context)

        return jsonify(patient_contexts), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/ActivePatientContextByDoctorUsername', methods=['GET'])
@jwt_required()
def get_active_patient_context_by_doctor_username():
    doctor_username = request.args.get('doctor_username')  # Get doctor_username from query params

    if not doctor_username:
        return jsonify({"error": "doctor_username is required"}), 400

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL ActivePatientContextByDoctorUsername(:doctor_username)"),
            {"doctor_username": doctor_username}
        )
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_contexts = []
        for row in records:
            context = dict(zip(column_names, row))
            if context.get("profile_picture"):
                context["profile_picture"] = base64.b64encode(context["profile_picture"]).decode("utf-8")
            patient_contexts.append(context)

        return jsonify(patient_contexts), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/CompletedPatientContextByDoctorUsername', methods=['GET'])
@jwt_required()
def get_completed_patient_context_by_doctor_username():
    doctor_username = request.args.get('doctor_username')  # Get doctor_username from query params

    if not doctor_username:
        return jsonify({"error": "doctor_username is required"}), 400

    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL CompletedPatientContextByDoctorUsername(:doctor_username)"),
            {"doctor_username": doctor_username}
        )
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary and encode profile_picture if it exists
        patient_contexts = []
        for row in records:
            context = dict(zip(column_names, row))
            if context.get("profile_picture"):
                context["profile_picture"] = base64.b64encode(context["profile_picture"]).decode("utf-8")
            patient_contexts.append(context)

        return jsonify(patient_contexts), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/GetLaboratoryTestRequestById/<string:request_id>', methods=['GET'])
def GetLaboratoryTestRequestById(request_id):
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL GetLaboratoryTestRequestById(:request_id)"),
            {"request_id": request_id}
        )
        records = result.fetchall()  # Fetch all records as a list
        column_names = result.keys()  # Get column names from the result's metadata

        if not records:
            return jsonify({"message": "Laboratory test request not found."}), 404

        # Convert each row to a dictionary
        test_requests = []
        for row in records:
            test_request = dict(zip(column_names, row))
            test_requests.append(test_request)

        # Return the first record (since ID should be unique)
        return jsonify(test_requests[0]), 200

    except SQLAlchemyError as e:
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while retrieving the laboratory test request.", "details": error_message}), 500
    
@bp_administrator.route('/GetPendingLaboratoryTestRequests', methods=['GET'])
@jwt_required()  # Ensure the route is protected by JWT authentication
def GetPendingLaboratoryTestRequests():
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetPendingLaboratoryTestRequests()"))
        records = result.fetchall()  # Fetch all records as a list
        column_names = result.keys()  # Get column names from the result's metadata

        if not records:
            return jsonify({"message": "No pending laboratory test requests found."}), 404

        # Convert each row to a dictionary
        pending_requests = []
        for row in records:
            request = dict(zip(column_names, row))
            pending_requests.append(request)

        return jsonify(pending_requests), 200  # Return as a JSON array

    except SQLAlchemyError as e:
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while retrieving pending laboratory test requests.", "details": error_message}), 500

@bp_administrator.route('/GetCompletedLaboratoryTestRequests', methods=['GET'])
@jwt_required()  # Ensure the route is protected by JWT authentication
def GetCompletedLaboratoryTestRequests():
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL GetCompletedLaboratoryTestRequests()"))
        records = result.fetchall()  # Fetch all records as a list
        column_names = result.keys()  # Get column names from the result's metadata

        if not records:
            return jsonify({"message": "No pending laboratory test requests found."}), 404

        # Convert each row to a dictionary
        pending_requests = []
        for row in records:
            request = dict(zip(column_names, row))
            pending_requests.append(request)

        return jsonify(pending_requests), 200  # Return as a JSON array

    except SQLAlchemyError as e:
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while retrieving pending laboratory test requests.", "details": error_message}), 500

@bp_administrator.route('/GetPendingFollowUpQuestions', methods=['GET'])
@jwt_required()  # Ensure the route is protected by JWT authentication
def GetPendingFollowUpQuestions():
    try:
        # Get the username from the request query parameters
        username = request.args.get('username')

        if not username:
            return jsonify({"error": "Username is required as a query parameter."}), 400

        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL GetPendingFollowUpQuestionsByUsername(:username)"),
            {"username": username}
        )
        records = result.fetchall()  # Fetch all records as a list
        column_names = result.keys()  # Get column names from the result's metadata

        if not records:
            return jsonify({"message": "No pending follow-up questions found."}), 404

        # Convert each row to a dictionary
        pending_questions = []
        for row in records:
            question = dict(zip(column_names, row))
            pending_questions.append(question)

        return jsonify(pending_questions), 200  # Return as a JSON array

    except SQLAlchemyError as e:
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while retrieving pending follow-up questions.", "details": error_message}), 500
    
@bp_administrator.route('/GetAnsweredFollowUpQuestions', methods=['GET'])
@jwt_required()  # Ensure the route is protected by JWT authentication
def GetAnsweredFollowUpQuestions():
    try:
        # Get the username from the request query parameters
        username = request.args.get('username')

        if not username:
            return jsonify({"error": "Username is required as a query parameter."}), 400

        # Call the stored procedure using raw SQL
        result = db.session.execute(
            text("CALL GetAnsweredQuestionsByUsername(:username)"),
            {"username": username}
        )
        records = result.fetchall()  # Fetch all records as a list
        column_names = result.keys()  # Get column names from the result's metadata

        if not records:
            return jsonify({"message": "No answered follow-up questions found."}), 404

        # Convert each row to a dictionary
        answered_questions = []
        for row in records:
            question = dict(zip(column_names, row))
            answered_questions.append(question)

        return jsonify(answered_questions), 200  # Return as a JSON array

    except SQLAlchemyError as e:
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while retrieving answered follow-up questions.", "details": error_message}), 500

# -------------------------------- INSERT OPERATIONS -------------------------------------------------------------------
@bp_administrator.route('/AddOrganizationStaff', methods=['POST'])
def AddOrganizationStaff():
    try:
        # Get the request data
        data = request.get_json()

        # Ensure all required fields are present
        required_fields = ['first_name', 'gender','last_name', 'role', 'department', 'email', 'phone_number', 'employment_type', 'date_of_joining', 'salary', 'shift', 'address', 'emergency_contact']
        if not all(field in data for field in required_fields):
            return jsonify({"error": "Missing required fields"}), 400

        # Original password
        password = "123456"

        # Hash the password
        hashed_password = bcrypt.generate_password_hash(password).decode('utf-8')

        # Call the stored procedure to add organization staff
        result = db.session.execute(
            text("""
                CALL AddOrganizationStaff(
                    :p_first_name, 
                    :p_last_name, 
                    :p_password_hash, 
                    :p_role, 
                    :p_department, 
                    :p_email, 
                    :p_phone_number, 
                    :p_employment_type, 
                    :p_date_of_joining, 
                    :p_salary, 
                    :p_shift, 
                    :p_gender,
                    :p_supervisor_id, 
                    :p_address, 
                    :p_emergency_contact
                )
            """),
            {
                "p_first_name": data['first_name'],
                "p_last_name": data['last_name'],
                "p_password_hash": hashed_password,
                "p_role": data['role'],
                "p_department": data['department'],
                "p_email": data['email'],
                "p_phone_number": data['phone_number'],
                "p_employment_type": data['employment_type'],
                "p_date_of_joining": data['date_of_joining'],
                "p_salary": data['salary'],
                "p_shift": data['shift'],
                "p_supervisor_id": None if data['supervisor'] == '' else data['supervisor'],
                "p_address": data['address'],
                "p_gender": data['gender'],
                "p_emergency_contact": data['emergency_contact']
            }
        )

        db.session.commit()  # Commit the transaction

        return jsonify({"message": "Organization staff added successfully"}), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/AddPatient', methods=['POST'])
@jwt_required()
def AddPatient():
    try:
        # Get the request data
        data = request.get_json()

        # Ensure all required fields are present
        required_fields = [
            'first_name', 'last_name', 'date_of_birth', 'gender', 
            'phone_number', 'marital_status', 'nationality', 'email'
        ]
        if not all(field in data for field in required_fields):
            return jsonify({"error": "Missing required fields"}), 400

        # Hash the default password (123456)
        default_password = "123456"
        hashed_password = bcrypt.generate_password_hash(default_password).decode('utf-8')

        # Convert base64 profile picture to binary BLOB
        profile_picture_blob = None
        if data.get('profile_picture'):
            profile_picture_blob = base64.b64decode(data['profile_picture'])

        # Call the stored procedure to add a patient
        result = db.session.execute(
            text("""
                CALL AddPatient(
                    :p_first_name, 
                    :p_last_name, 
                    :p_date_of_birth, 
                    :p_gender, 
                    :p_phone_number, 
                    :p_marital_status, 
                    :p_occupation, 
                    :p_nationality, 
                    :p_email, 
                    :hashed_pwd, 
                    :p_profile_picture
                )
            """),
            {
                "p_first_name": data['first_name'],
                "p_last_name": data['last_name'],
                "p_date_of_birth": data['date_of_birth'],
                "p_gender": data['gender'],
                "p_phone_number": data['phone_number'],
                "p_marital_status": data['marital_status'],
                "p_occupation": data.get('occupation'),  # Optional
                "p_nationality": data['nationality'],
                "p_email": data['email'],
                "hashed_pwd": hashed_password,  # Pass the hashed password
                "p_profile_picture": profile_picture_blob  # Pass as BLOB
            }
        )

        db.session.commit()  # Commit the transaction

        return jsonify({"message": "Patient added successfully"}), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        return jsonify({"error": str(e)}), 500

@bp_administrator.route('/AddPatientInstance', methods=['POST'])
@jwt_required()
def AddPatientInstance():
    try:
        # Get the request data
        data = request.get_json()

        # Ensure all required fields are present
        required_fields = [
            'patient_id', 'doctor_id', 'diagnosis_date', 'chief_complaints', 
            'symptoms', 'symptom_details', 'pain_details', 'duration_of_illness', 
            'remedies_tried', 'vitals', 'weight', 'height', 
            'ongoing_medications', 'lifestyle_factors', 'allergies_and_alerts', 
            'nurses_notes', 'instance_summary'  # New field
        ]
        errors = []
    
        for field in required_fields:
            if field not in data or data[field] in [None, '', []]:
                errors.append(f"Missing {field.replace('_', ' ').title()}")

        if errors:
            return jsonify({"error": errors}), 400

        # Convert weight and height to numbers
        try:
            weight = float(data['weight'])
            height = float(data['height'])
        except ValueError:
            return jsonify({"error": "Weight and height must be numbers"}), 400

        # Serialize dictionary fields to JSON strings
        symptom_details = json.dumps(data['symptom_details'])
        pain_details = json.dumps(data['pain_details'])
        vitals = json.dumps(data['vitals'])
        lifestyle_factors = json.dumps(data['lifestyle_factors'])

        # Call the stored procedure to add a patient instance
        result = db.session.execute(
            text("""
                CALL AddPatientInstance(
                    :p_patient_id, 
                    :p_doctor_id, 
                    :p_diagnosis_date, 
                    :p_chief_complaints, 
                    :p_symptoms, 
                    :p_symptom_details, 
                    :p_pain_details, 
                    :p_duration_of_illness, 
                    :p_remedies_tried, 
                    :p_vitals, 
                    :p_weight, 
                    :p_height, 
                    :p_ongoing_medications, 
                    :p_lifestyle_factors, 
                    :p_allergies_and_alerts, 
                    :p_nurses_notes,
                    :p_instance_summary  # New parameter
                )
            """),
            {
                "p_patient_id": data['patient_id'],
                "p_doctor_id": data['doctor_id'],
                "p_diagnosis_date": data['diagnosis_date'],
                "p_chief_complaints": data['chief_complaints'],
                "p_symptoms": data['symptoms'],
                "p_symptom_details": symptom_details,  # Serialized JSON
                "p_pain_details": pain_details,  # Serialized JSON
                "p_duration_of_illness": data['duration_of_illness'],
                "p_remedies_tried": data['remedies_tried'],
                "p_vitals": vitals,  # Serialized JSON
                "p_weight": weight,
                "p_height": height,
                "p_ongoing_medications": data['ongoing_medications'],
                "p_lifestyle_factors": lifestyle_factors,  # Serialized JSON
                "p_allergies_and_alerts": data['allergies_and_alerts'],
                "p_nurses_notes": data['nurses_notes'],
                "p_instance_summary": data['instance_summary']  # New parameter
            }
        )

        db.session.commit()  # Commit the transaction

        # Fetch the result from the stored procedure (diagnosis_id and diagnosis_code)
        result_data = result.fetchone()
        diagnosis_id = result_data[0]
        diagnosis_code = result_data[1]

        return jsonify({
            "message": "Patient instance added successfully",
            "diagnosis_id": diagnosis_id,
            "diagnosis_code": diagnosis_code
        }), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        return jsonify({"error": str(e)}), 500 

@bp_administrator.route('/InsertLaboratoryReport', methods=['POST'])
def InsertLaboratoryReport():
    try:
        # Get JSON data from the request
        data = request.get_json()
        request_id = data.get('request_id')
        username = data.get('username')
        result = data.get('result')
        comments = data.get('comments')

        # Validate required fields
        if not request_id or not username or not result:
            return jsonify({"error": "Missing required fields: request_id, username, or result"}), 400

        # Call the stored procedure
        db.session.execute(
            text("CALL InsertLaboratoryReport(:request_id, :username, :result, :comments)"),
            {
                "request_id": request_id,
                "username": username,
                "result": result,
                "comments": comments,
            }
        )
        db.session.commit()

        return jsonify({"message": "Laboratory report inserted successfully"}), 201

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while inserting the laboratory report.", "details": error_message}), 500
    

# -------------------------------- UPDATE OPERATIONS -------------------------------------------------------------------
@bp_administrator.route('/DeactivateUserById', methods=['POST'])
@jwt_required()
def deactivate_user_by_id():
    try:
        # Get data from the request body
        data = request.json
        userid = data.get('userid')
        username = data.get('username')
        current_password = data.get('current_password')

        # Validate required fields
        if not all([userid, username, current_password]):
            return jsonify({"error": "All fields are required."}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            return jsonify({"error": "User not found."}), 404

        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        result = db.session.execute(
            text("CALL DeactivateUserById(:p_staff_id)"),
            {"p_staff_id": userid}
        )
        db.session.commit()  # Commit the transaction

        # If the stored procedure returns a result, fetch it
        if result.returns_rows:
            records = result.fetchall()
            column_names = result.keys()
            response_data = [dict(zip(column_names, row)) for row in records]
            return jsonify(response_data), 200
        else:
            return jsonify({"message": "User deactivated successfully"}), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while deactivating the user.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ActivateUserById', methods=['POST'])
@jwt_required()
def activate_user_by_id():
    try:
        # Get data from the request body
        data = request.json
        userid = data.get('userid')
        username = data.get('username')
        current_password = data.get('current_password')

        # Validate required fields
        if not all([userid, username, current_password]):
            return jsonify({"error": "All fields are required."}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            return jsonify({"error": "User not found."}), 404

        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        result = db.session.execute(
            text("CALL ActivateUserById(:p_staff_id)"),
            {"p_staff_id": userid}
        )
        db.session.commit()  # Commit the transaction

        # If the stored procedure returns a result, fetch it
        if result.returns_rows:
            records = result.fetchall()
            column_names = result.keys()
            response_data = [dict(zip(column_names, row)) for row in records]
            return jsonify(response_data), 200
        else:
            return jsonify({"message": "User activated successfully"}), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while activating the user.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ResetOrgUserPwdById', methods=['POST'])
@jwt_required()
def reset_org_user_pwd_by_id():
    try:
        # Get data from the request body
        data = request.json
        userid = data.get('userid')
        new_password = data.get('newPassword')
        username = data.get('username')
        current_password = data.get('current_password')

        # Validate required fields
        if not all([userid, new_password, username, current_password]):
            return jsonify({"error": "All fields are required."}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            return jsonify({"error": "User not found."}), 404

        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Hash the new password using bcrypt
        hashed_password = bcrypt.generate_password_hash(new_password).decode('utf-8')

        # Call the stored procedure
        db.session.execute(
            text("CALL ResetOrgUserPwdById(:p_organization_staff_id, :p_new_password)"),
            {"p_organization_staff_id": userid, "p_new_password": hashed_password}
        )
        db.session.commit()  # Commit the transaction

        return jsonify({"message": "Password reset successfully"}), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while resetting the password.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/DeactivatePatientById', methods=['POST'])
@jwt_required()
def deactivate_patient_by_id():
    try:
        # Get data from the request body
        data = request.json
        userid = data.get('userid')
        username = data.get('username')
        current_password = data.get('current_password')

        # Validate required fields
        if not all([userid, username, current_password]):
            return jsonify({"error": "All fields are required."}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            return jsonify({"error": "User not found."}), 404

        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        result = db.session.execute(
            text("CALL DeactivatePatientById(:p_patient_id)"),
            {"p_patient_id": userid}
        )
        db.session.commit()  # Commit the transaction

        # If the stored procedure returns a result, fetch it
        if result.returns_rows:
            records = result.fetchall()
            column_names = result.keys()
            response_data = [dict(zip(column_names, row)) for row in records]
            return jsonify(response_data), 200
        else:
            return jsonify({"message": "Patient deactivated successfully"}), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while deactivating the user.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ActivatePatientById', methods=['POST'])
@jwt_required()
def activate_patient_by_id():
    try:
        # Get data from the request body
        data = request.json
        userid = data.get('userid')
        username = data.get('username')
        current_password = data.get('current_password')

        # Validate required fields
        if not all([userid, username, current_password]):
            return jsonify({"error": "All fields are required."}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            return jsonify({"error": "User not found."}), 404

        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        result = db.session.execute(
            text("CALL ActivatePatientById(:p_patient_id)"),
            {"p_patient_id": userid}
        )
        db.session.commit()  # Commit the transaction

        # If the stored procedure returns a result, fetch it
        if result.returns_rows:
            records = result.fetchall()
            column_names = result.keys()
            response_data = [dict(zip(column_names, row)) for row in records]
            return jsonify(response_data), 200
        else:
            return jsonify({"message": "Patient activated successfully"}), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while activating the user.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ResetPatientPwdById', methods=['POST'])
@jwt_required()
def reset_patient_user_pwd_by_id():
    try:
        # Get data from the request body
        data = request.json
        userid = data.get('userid')
        new_password = data.get('newPassword')
        username = data.get('username')
        current_password = data.get('current_password')

        # Validate required fields
        if not all([userid, new_password, username, current_password]):
            return jsonify({"error": "All fields are required."}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            return jsonify({"error": "User not found."}), 404

        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Hash the new password using bcrypt
        hashed_password = bcrypt.generate_password_hash(new_password).decode('utf-8')

        # Call the stored procedure
        db.session.execute(
            text("CALL ResetPatientUserPwdById(:p_patient_id, :p_new_password)"),
            {"p_patient_id": userid, "p_new_password": hashed_password}
        )
        db.session.commit()  # Commit the transaction

        return jsonify({"message": "Password reset successfully"}), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while resetting the password.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/GenerateUniqueUsername', methods=['POST'])
@jwt_required()
def generate_unique_username():
    try:
        # Get first name and last name from the request body
        data = request.json
        first_name = data.get('first_name')
        last_name = data.get('last_name')

        if not first_name or not last_name:
            return jsonify({"error": "first_name and last_name are required"}), 400

        # Prepare output parameter
        generated_username = None

        # Call the stored procedure
        db.session.execute(
            text("CALL GenerateUniqueUsername(:p_first_name, :p_last_name, @p_generated_username)"),
            {"p_first_name": first_name, "p_last_name": last_name}
        )

        # Fetch the output parameter value
        generated_username_result = db.session.execute(text("SELECT @p_generated_username"))
        generated_username = generated_username_result.scalar()

        db.session.commit()  # Commit transaction

        if generated_username:
            return jsonify({"generated_username": generated_username}), 200
        else:
            return jsonify({"error": "Failed to generate a unique username."}), 500

    except SQLAlchemyError as e:
        db.session.rollback()  # Rollback in case of error
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while generating the username.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500



# -------------------------------- CHANGE OPERATIONS -------------------------------------------------------------------
@bp_administrator.route('/ChangeShiftOrganizationUser', methods=['POST'])
@jwt_required()
def change_shift_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get("username")
        new_shift = data.get('new_shift')
        current_password = data.get("current_password")

        if not all([staff_id, new_shift, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeShiftOrganizationUser(:p_staff_id, :p_new_shift)"),
            {"p_staff_id": staff_id, "p_new_shift": new_shift}
        )
        db.session.commit()

        return jsonify({"message": "Shift updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the shift.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/ChangeSalaryOrganizationUser', methods=['POST'])
@jwt_required()
def change_salary_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_salary = data.get('new_salary')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_salary, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeSalaryOrganizationUser(:p_staff_id, :p_new_salary)"),
            {"p_staff_id": staff_id, "p_new_salary": new_salary}
        )
        db.session.commit()

        return jsonify({"message": "Salary updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the salary.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeRoleOrganizationUser', methods=['POST'])
@jwt_required()
def change_role_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_role = data.get('new_role')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_role, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeRoleOrganizationUser(:p_staff_id, :p_new_role)"),
            {"p_staff_id": staff_id, "p_new_role": new_role}
        )
        db.session.commit()

        return jsonify({"message": "Role updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the role.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeUsernameOrganizationUser', methods=['POST'])
@jwt_required()
def change_username_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_username = data.get('new_username')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_username, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeUsernameOrganizationUser(:p_staff_id, :p_new_username)"),
            {"p_staff_id": staff_id, "p_new_username": new_username}
        )
        db.session.commit()

        return jsonify({"message": "Username updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the username.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeProfilePictureOrganizationUser', methods=['POST'])
@jwt_required()
def change_profile_picture_organization_user():
    try:
        data = request.json
        # logger.debug(f"Incoming data: {data}")  # Log the incoming data

        staff_id = data.get('staff_id')
        username = data.get('username')
        new_profile_picture_base64 = data.get('new_profile_picture')  # Expecting base64 encoded string
        current_password = data.get('current_password')

        if not all([staff_id, username, new_profile_picture_base64, current_password]):
            # logger.error("Missing required fields")
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            # logger.error(f"User not found: {username}")
            return jsonify({"error": "User not found."}), 404
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            # logger.error("Incorrect password")
            return jsonify({"error": "Password is incorrect."}), 403

        # Decode the base64 string into binary data
        try:
            new_profile_picture = base64.b64decode(new_profile_picture_base64)
            # logger.debug("Base64 decoded successfully")
        except Exception as e:
            # logger.error(f"Failed to decode base64: {e}")
            return jsonify({"error": "Invalid base64 data."}), 400

        # Call the stored procedure
        try:
            db.session.execute(
                text("CALL ChangeProfilePictureOrganizationUser(:p_staff_id, :p_new_profile_picture)"),
                {"p_staff_id": staff_id, "p_new_profile_picture": new_profile_picture}
            )
            db.session.commit()
            # logger.debug("Profile picture updated successfully")
            return jsonify({"message": "Profile picture updated successfully."}), 200
        except SQLAlchemyError as e:
            db.session.rollback()
            error_message = str(e.__dict__.get("orig", e))
            # logger.error(f"Database error: {error_message}")
            return jsonify({"error": "An error occurred while updating the profile picture.", "details": error_message}), 500

    except Exception as e:
        # logger.error(f"Unexpected error: {e}")
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/ChangeDepartmentOrganizationUser', methods=['POST'])
@jwt_required()
def change_department_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_department = data.get('new_department')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_department, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeDepartmentOrganizationUser(:p_staff_id, :p_new_department)"),
            {"p_staff_id": staff_id, "p_new_department": new_department}
        )
        db.session.commit()

        return jsonify({"message": "Department updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the department.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeEmergencyContactOrganizationUser', methods=['POST'])
@jwt_required()
def change_emergency_contact_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_emergency_contact = data.get('new_emergency_contact')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_emergency_contact, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeEmergencyContactOrganizationUser(:p_staff_id, :p_new_emergency_contact)"),
            {"p_staff_id": staff_id, "p_new_emergency_contact": new_emergency_contact}
        )
        db.session.commit()

        return jsonify({"message": "Emergency contact updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the emergency contact.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeAddressOrganizationUser', methods=['POST'])
@jwt_required()
def change_address_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_address = data.get('new_address')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_address, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeAddressOrganizationUser(:p_staff_id, :p_new_address)"),
            {"p_staff_id": staff_id, "p_new_address": new_address}
        )
        db.session.commit()

        return jsonify({"message": "Address updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the address.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeGenderOrganizationUser', methods=['POST'])
@jwt_required()
def change_gender_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_gender = data.get('new_gender')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_gender, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeGenderOrganizationUser(:p_staff_id, :p_new_gender)"),
            {"p_staff_id": staff_id, "p_new_gender": new_gender}
        )
        db.session.commit()

        return jsonify({"message": "Gender updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the gender.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangePhoneNumberOrganizationUser', methods=['POST'])
@jwt_required()
def change_phone_number_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_phone_number = data.get('new_phone_number')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_phone_number, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangePhoneNumberOrganizationUser(:p_staff_id, :p_new_phone_number)"),
            {"p_staff_id": staff_id, "p_new_phone_number": new_phone_number}
        )
        db.session.commit()

        return jsonify({"message": "Phone number updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the phone number.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeEmailOrganizationUser', methods=['POST'])
@jwt_required()
def change_email_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_email = data.get('new_email')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_email, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Validate email format (optional)
        if not re.match(r"[^@]+@[^@]+\.[^@]+", new_email):
            return jsonify({"error": "Invalid email format."}), 400

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeEmailOrganizationUser(:p_staff_id, :p_new_email)"),
            {"p_staff_id": staff_id, "p_new_email": new_email}
        )
        db.session.commit()

        return jsonify({"message": "Email updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the email.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeEmploymentTypeOrganizationUser', methods=['POST'])
@jwt_required()
def change_employment_type_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        username = data.get('username')
        new_employment_type = data.get('new_employment_type')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_employment_type, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeEmploymentTypeOrganizationUser(:p_staff_id, :p_new_employment_type)"),
            {"p_staff_id": staff_id, "p_new_employment_type": new_employment_type}
        )
        db.session.commit()

        return jsonify({"message": "Employment type updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the employment type.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/ChangeFullNameOrganizationUser', methods=['POST'])
@jwt_required()
def change_full_name_organization_user():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        new_first_name = data.get('new_first_name')
        new_last_name = data.get('new_last_name')
        current_password = data.get('current_password')
        username = data.get('username')

        if not all([staff_id, new_first_name, new_last_name, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeFullNameOrganizationUser(:p_staff_id, :p_new_first_name, :p_new_last_name)"),
            {"p_staff_id": staff_id, "p_new_first_name": new_first_name, "p_new_last_name": new_last_name}
        )
        db.session.commit()

        return jsonify({"message": "Full name updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the full name.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/RemoveUserProfilePicture', methods=['POST'])
@jwt_required()
def remove_user_profile_picture():
    try:
        data = request.json
        staff_id = data.get('staff_id')
        current_password = data.get('current_password')
        username = data.get('username')

        if not all([staff_id, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL RemoveUserProfilePicture(:p_staff_id)"),
            {"p_staff_id": staff_id}
        )
        db.session.commit()

        return jsonify({"message": "Profile picture removed successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while removing the profile picture.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/answer_follow_up_question', methods=['POST'])
@jwt_required()
def answer_follow_up_question():
    try:
        # Get JSON data from the request
        data = request.json
        question_id = data.get('question_id')
        answer = data.get('answer')

        # Validate required fields
        if not all([question_id, answer]):
            return jsonify({"error": "All fields (question_id, answer) are required."}), 400

        # Call the stored procedure
        db.session.execute(
            text("CALL AnswerFollowUpQuestion(:p_id, :p_answer)"),
            {"p_id": question_id, "p_answer": answer}
        )
        db.session.commit()

        return jsonify({"message": "Follow-up question answered successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while answering the follow-up question.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500
# -------------------------------- CHANGE OPERATIONS FOR PATIENT -------------------------------------------------------------------

@bp_administrator.route('/ChangeFullNamePatientUser', methods=['POST'])
@jwt_required()
def change_full_name_patient_user():
    try:
        data = request.json
        staff_id = data.get('patient_id')
        new_first_name = data.get('new_first_name')
        new_last_name = data.get('new_last_name')
        current_password = data.get('current_password')
        username = data.get('username')

        if not all([staff_id, new_first_name, new_last_name, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeFullNamePatientUser(:p_patient_id, :p_new_first_name, :p_new_last_name)"),
            {"p_patient_id": staff_id, "p_new_first_name": new_first_name, "p_new_last_name": new_last_name}
        )
        db.session.commit()

        return jsonify({"message": "Full name updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the full name.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/RemovePatientProfilePicture', methods=['POST'])
@jwt_required()
def remove_patient_profile_picture():
    try:
        data = request.json
        staff_id = data.get('patient_id')
        current_password = data.get('current_password')
        username = data.get('username')

        if not all([staff_id, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL RemovePatientProfilePicture(:p_patient_id)"),
            {"p_patient_id": staff_id}
        )
        db.session.commit()

        return jsonify({"message": "Profile picture removed successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while removing the profile picture.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeGenderPatientUser', methods=['POST'])
@jwt_required()
def change_gender_patient_user():
    try:
        data = request.json
        staff_id = data.get('patient_id')
        username = data.get('username')
        new_gender = data.get('new_gender')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_gender, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeGenderPatientUser(:p_patient_id, :p_new_gender)"),
            {"p_patient_id": staff_id, "p_new_gender": new_gender}
        )
        db.session.commit()

        return jsonify({"message": "Gender updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the gender.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangePhoneNumberPatientUser', methods=['POST'])
@jwt_required()
def change_phone_number_patient_user():
    try:
        data = request.json
        staff_id = data.get('patient_id')
        username = data.get('username')
        new_phone_number = data.get('new_phone_number')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_phone_number, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangePhoneNumberPatientUser(:p_patient_id, :p_new_phone_number)"),
            {"p_patient_id": staff_id, "p_new_phone_number": new_phone_number}
        )
        db.session.commit()

        return jsonify({"message": "Phone number updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the phone number.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeEmailPatientUser', methods=['POST'])
@jwt_required()
def change_email_patient_user():
    try:
        data = request.json
        staff_id = data.get('patient_id')
        username = data.get('username')
        new_email = data.get('new_email')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_email, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Validate email format (optional)
        if not re.match(r"[^@]+@[^@]+\.[^@]+", new_email):
            return jsonify({"error": "Invalid email format."}), 400

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeEmailPatientUser(:p_patient_id, :p_new_email)"),
            {"p_patient_id": staff_id, "p_new_email": new_email}
        )
        db.session.commit()

        return jsonify({"message": "Email updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the email.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeUsernamePatientUser', methods=['POST'])
@jwt_required()
def change_username_patient_user():
    try:
        data = request.json
        staff_id = data.get('patient_id')
        username = data.get('username')
        new_username = data.get('new_username')
        current_password = data.get('current_password')

        if not all([staff_id, username, new_username, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeUsernamePatientUser(:p_patient_id, :p_new_username)"),
            {"p_patient_id": staff_id, "p_new_username": new_username}
        )
        db.session.commit()

        return jsonify({"message": "Username updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the username.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


@bp_administrator.route('/ChangeProfilePicturePatientUser', methods=['POST'])
@jwt_required()
def change_profile_picture_patient_user():
    try:
        data = request.json
        # logger.debug(f"Incoming data: {data}")  # Log the incoming data

        staff_id = data.get('patient_id')
        username = data.get('username')
        new_profile_picture_base64 = data.get('new_profile_picture')  # Expecting base64 encoded string
        current_password = data.get('current_password')

        if not all([staff_id, username, new_profile_picture_base64, current_password]):
            # logger.error("Missing required fields")
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            # logger.error(f"User not found: {username}")
            return jsonify({"error": "User not found."}), 404
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            # logger.error("Incorrect password")
            return jsonify({"error": "Password is incorrect."}), 403

        # Decode the base64 string into binary data
        try:
            new_profile_picture = base64.b64decode(new_profile_picture_base64)
            # logger.debug("Base64 decoded successfully")
        except Exception as e:
            # logger.error(f"Failed to decode base64: {e}")
            return jsonify({"error": "Invalid base64 data."}), 400

        # Call the stored procedure
        try:
            db.session.execute(
                text("CALL ChangeProfilePicturePatientUser(:p_patient_id, :p_new_profile_picture)"),
                {"p_patient_id": staff_id, "p_new_profile_picture": new_profile_picture}
            )
            db.session.commit()
            # logger.debug("Profile picture updated successfully")
            return jsonify({"message": "Profile picture updated successfully."}), 200
        except SQLAlchemyError as e:
            db.session.rollback()
            error_message = str(e.__dict__.get("orig", e))
            # logger.error(f"Database error: {error_message}")
            return jsonify({"error": "An error occurred while updating the profile picture.", "details": error_message}), 500

    except Exception as e:
        # logger.error(f"Unexpected error: {e}")
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/ChangeMaritalStatusPatientUser', methods=['POST'])
@jwt_required()
def change_marital_status_patient_user():
    try:
        data = request.json
        patient_id = data.get('patient_id')
        username = data.get('username')
        new_marital_status = data.get('new_marital_status')
        current_password = data.get('current_password')

        if not all([patient_id, username, new_marital_status, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeMaritalStatusPatientUser(:p_patient_id, :p_new_marital_status)"),
            {"p_patient_id": patient_id, "p_new_marital_status": new_marital_status}
        )
        db.session.commit()

        return jsonify({"message": "Marital status updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the marital status.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/ChangeOccupationPatientUser', methods=['POST'])
@jwt_required()
def change_occupation_patient_user():
    try:
        data = request.json
        patient_id = data.get('patient_id')
        username = data.get('username')
        new_occupation = data.get('new_occupation')
        current_password = data.get('current_password')

        if not all([patient_id, username, new_occupation, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeOccupationPatientUser(:p_patient_id, :p_new_occupation)"),
            {"p_patient_id": patient_id, "p_new_occupation": new_occupation}
        )
        db.session.commit()

        return jsonify({"message": "Occupation updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the occupation.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

@bp_administrator.route('/ChangeNationalityPatientUser', methods=['POST'])
@jwt_required()
def change_nationality_patient_user():
    try:
        data = request.json
        patient_id = data.get('patient_id')
        username = data.get('username')
        new_nationality = data.get('new_nationality')
        current_password = data.get('current_password')

        if not all([patient_id, username, new_nationality, current_password]):
            return jsonify({"error": "All fields are required."}), 400
        
        user = AppUser.query.filter_by(username=username).first()
        
        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Password is incorrect."}), 403

        # Call the stored procedure
        db.session.execute(
            text("CALL ChangeNationalityPatientUser(:p_patient_id, :p_new_nationality)"),
            {"p_patient_id": patient_id, "p_new_nationality": new_nationality}
        )
        db.session.commit()

        return jsonify({"message": "Nationality updated successfully."}), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the nationality.", "details": error_message}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500

# -------------------------------- DIAGNOSIS OPERATIONS -------------------------------------------------------------------
@bp_administrator.route('/follow-up-questions/bulk', methods=['POST'])
def create_bulk_follow_up_questions():
    data = request.get_json()

    if not isinstance(data, list):
        return jsonify({"message": "Input data must be a list of records"}), 400

    validation_errors = []
    new_questions = []

    for index, record in enumerate(data):
        errors = []

        # Validate required fields
        if 'category' not in record:
            errors.append("Missing required field: 'category'")
        if 'question' not in record:
            errors.append("Missing required field: 'question'")
        if 'is_required' not in record:
            errors.append("Missing required field: 'is_required'")
        if 'context_id' not in record:
            errors.append("Missing required field: 'context_id'")
        if 'priority_level' not in record:
            errors.append("Missing required field: 'priority_level'")
        if 'status' not in record:
            errors.append("Missing required field: 'status'")

        if errors:
            validation_errors.append({
                "record_index": index + 1,
                "errors": errors
            })
            continue  # Skip this record if it has validation errors

        # Create new follow-up question instance if no validation errors
        new_question = FollowUpQuestion(
            id=str(uuid.uuid4()),
            parent_id=record.get('parent_id'),
            category=record['category'],
            question=record['question'],
            answer=record.get('answer'),
            is_required=record['is_required'],
            context_id=record['context_id'],
            priority_level=record['priority_level'],
            status=record['status']
        )
        new_questions.append(new_question)

    if validation_errors:
        # Return validation errors for the invalid records
        return jsonify({
            "message": "Some records have validation errors",
            "validation_errors": validation_errors
        }), 400

    # Add all valid records to the session and commit
    db.session.bulk_save_objects(new_questions)
    db.session.commit()

    # Return the successfully created records
    return follow_up_questions_schema.jsonify(new_questions), 201

@bp_administrator.route('/patient-prescriptions/bulk', methods=['POST'])
def create_bulk_patient_prescriptions():
    data = request.get_json()

    if not isinstance(data, list):
        return jsonify({"message": "Input data must be a list of records"}), 400

    validation_errors = []
    new_prescriptions = []

    for index, record in enumerate(data):
        errors = []

        # Validate required fields
        if 'diagnosis_id' not in record:
            errors.append("Missing required field: 'diagnosis_id'")
        if 'medication' not in record:
            errors.append("Missing required field: 'medication'")
        if 'dosage' not in record:
            errors.append("Missing required field: 'dosage'")
        if 'duration' not in record:
            errors.append("Missing required field: 'duration'")
        if 'frequency' not in record:
            errors.append("Missing required field: 'frequency'")
        if 'route_of_administration' not in record:
            errors.append("Missing required field: 'route_of_administration'")
        if 'start_date' not in record:
            errors.append("Missing required field: 'start_date'")

        if errors:
            validation_errors.append({
                "record_index": index + 1,
                "errors": errors
            })
            continue  # Skip this record if it has validation errors

        # Create new patient prescription instance if no validation errors
        new_prescription = PatientPrescription(
            id=str(uuid.uuid4()),
            diagnosis_id=record['diagnosis_id'],
            medication=record.get('medication'),  # Optional field
            dosage=record['dosage'],
            duration=record['duration'],
            frequency=record['frequency'],
            route_of_administration=record['route_of_administration'],
            start_date=record['start_date'],
            end_date=record.get('end_date'),
            instructions=record.get('instructions', ''),
            status=record.get('status', 'Active')
        )
        new_prescriptions.append(new_prescription)

    if validation_errors:
        # Return validation errors for the invalid records
        return jsonify({
            "message": "Some records have validation errors",
            "validation_errors": validation_errors
        }), 400

    # Add all valid records to the session and commit
    db.session.bulk_save_objects(new_prescriptions)
    db.session.commit()

    # Return the successfully created records
    return patient_prescriptions_schema.jsonify(new_prescriptions), 201

@bp_administrator.route('/patient-recommendations/bulk', methods=['POST'])
def create_bulk_patient_recommendations():
    data = request.get_json()

    if not isinstance(data, list):
        return jsonify({"message": "Input data must be a list of records"}), 400

    validation_errors = []
    new_prescriptions = []

    for index, record in enumerate(data):
        errors = []

        # Validate required fields
        if 'diagnosis_id' not in record:
            errors.append("Missing required field: 'diagnosis_id'")
        if 'recommendation_text' not in record:
            errors.append("Missing required field: 'recommendation_text'")
        if 'recommendation_type' not in record:
            errors.append("Missing required field: 'recommendation_type'")

        if errors:
            validation_errors.append({
                "record_index": index + 1,
                "errors": errors
            })
            continue  # Skip this record if it has validation errors

        # Create new patient recommendation instance if no validation errors
        new_prescription = PatientRecommendation(
            id=str(uuid.uuid4()),
            diagnosis_id=record['diagnosis_id'],
            recommendation_type=record.get('recommendation_type'),  
            recommendation_text=record['recommendation_text'],
            date_recommended=datetime.utcnow(),
            updated_at=datetime.utcnow(),
            comments=record['comments'],
        )
        new_prescriptions.append(new_prescription)

    if validation_errors:
        # Return validation errors for the invalid records
        return jsonify({
            "message": "Some records have validation errors",
            "validation_errors": validation_errors
        }), 400

    # Add all valid records to the session and commit
    db.session.bulk_save_objects(new_prescriptions)
    db.session.commit()

    # Return the successfully created records
    return patient_prescriptions_schema.jsonify(new_prescriptions), 201

# Bulk insert laboratory test requests
@bp_administrator.route('/laboratory-test-requests/bulk', methods=['POST'])
def create_bulk_test_requests():
    data = request.get_json()

    if not isinstance(data, list):
        return jsonify({"message": "Input data must be a list of records"}), 400

    validation_errors = []
    new_requests = []

    for index, record in enumerate(data):
        errors = []

        # Validate required fields
        if 'diagnosis_id' not in record:
            errors.append("Missing required field: 'diagnosis_id'")
        if 'test_type' not in record:
            errors.append("Missing required field: 'test_type'")
        if 'priority_level' not in record:
            errors.append("Missing required field: 'priority_level'")

        # Validate priority_level and status against allowed values
        if 'priority_level' in record and record['priority_level'] not in ['Low', 'Normal', 'High', 'Urgent']:
            errors.append("Invalid value for 'priority_level'. Must be one of: 'Low', 'Normal', 'High', 'Urgent'")
        if 'status' in record and record['status'] not in ['Pending', 'In Progress', 'Completed', 'Cancelled']:
            errors.append("Invalid value for 'status'. Must be one of: 'Pending', 'In Progress', 'Completed', 'Cancelled'")

        if errors:
            validation_errors.append({
                "record_index": index + 1,
                "errors": errors
            })
            continue  # Skip this record if it has validation errors

        # Assign default status if not provided
        status = record.get('status', 'Pending')

        # Create new test request instance if no validation errors
        new_request = LaboratoryTestRequest(
            id=str(uuid.uuid4()),  # Generate UUID
            diagnosis_id=record['diagnosis_id'],
            test_type=record['test_type'],
            test_details=record.get('test_details', ''),  # Optional field
            priority_level=record['priority_level'],
            status=status,
            comments=record.get('comments', ''),  # Optional field
            requested_at=datetime.utcnow(),  # Set current timestamp
            updated_at=datetime.utcnow()  # Set current timestamp
        )
        new_requests.append(new_request)

    if validation_errors:
        # Return validation errors for the invalid records
        return jsonify({
            "message": "Some records have validation errors",
            "validation_errors": validation_errors
        }), 400

    # Add all valid records to the session and commit
    db.session.bulk_save_objects(new_requests)
    db.session.commit()

    # Return the successfully created records
    return laboratory_test_requests_schema.jsonify(new_requests), 201

@bp_administrator.route('/update_final_diagnosis', methods=['POST'])
@jwt_required()
def update_final_diagnosis():
    try:
        # Get JSON data from the request
        data = request.json
        diagnosis_id = data.get('diagnosis_id')
        final_diagnosis = data.get('final_diagnosis')

        # Validate required fields
        if not all([diagnosis_id, final_diagnosis]):
            return jsonify({"error": "Both diagnosis_id and final_diagnosis are required."}), 400

        # Call the stored procedure
        db.session.execute(
            text("CALL update_final_diagnosis(:p_id, :p_final_diagnosis)"),
            {"p_id": diagnosis_id, "p_final_diagnosis": final_diagnosis}
        )
        db.session.commit()

        return jsonify({"message": "Final diagnosis updated successfully and status set to 'completed'."}), 200

    except SQLAlchemyError as e:
        # Rollback in case of database errors
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return jsonify({"error": "An error occurred while updating the final diagnosis.", "details": error_message}), 500
    except Exception as e:
        # Handle unexpected errors
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500


def serialize_date(obj):
    """Custom JSON serializer for datetime.date and Decimal objects."""
    if isinstance(obj, date):
        return obj.isoformat()  # Convert date to string in ISO format
    if isinstance(obj, Decimal):
        return float(obj)  # Convert Decimal to float
    raise TypeError(f"Type {type(obj)} not serializable")

def get_patient_history(p_diagnosis_id):
    try:
        with db.session.begin():
            result = db.session.execute(
                text("CALL GetPatientDiagnosisDetails(:p_diagnosis_id)"),
                {"p_diagnosis_id": p_diagnosis_id}
            )
            records = result.fetchall()
            print("Raw Result:", records)  # Debugging output

            if not records:
                return json.dumps({"message": "No records found for the given diagnosis ID."}, default=serialize_date), 404

            column_names = result.keys()
            patient_record = [dict(zip(column_names, row)) for row in records]
            
            return json.dumps({"data": patient_record}, default=serialize_date), 200
    except SQLAlchemyError as e:
        db.session.rollback()
        error_message = str(e.__dict__.get("orig", e))
        return json.dumps({"error": "An error occurred.", "details": error_message}, default=serialize_date), 500
    finally:
        db.session.close()

def get_patient_instance(input_diagnosis_id):
    try:
        with db.session.begin():  # Ensure transaction safety
            result = db.session.execute(
                text("CALL GetPatientInstanceByDiagnosisId(:input_diagnosis_id)"),
                {"input_diagnosis_id": input_diagnosis_id}
            )
            records = result.fetchall()
            print("Raw Result:", records)  # Debugging output

            if not records:
                return json.dumps({"message": "No records found for the given diagnosis ID."}, default=serialize_date), 404

            column_names = result.keys()
            patient_record = [dict(zip(column_names, row)) for row in records]
            
            return json.dumps({"data": patient_record}, default=serialize_date), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Ensure rollback on errors
        error_message = str(e.__dict__.get("orig", e))
        return json.dumps({"error": "An error occurred while retrieving patient instance.", "details": error_message}, default=serialize_date), 500

    finally:
        db.session.close()  # Ensure the session is properly closed

def get_follow_up_questions(input_diagnosis_id):
    try:
        with db.session.begin():  # Ensure transaction safety
            result = db.session.execute(
                 text("CALL GetFollowUpQuestionsByDiagnosisId(:diagnosis_id)"),
                {"diagnosis_id": input_diagnosis_id}
            )
            records = result.fetchall()
            print("Raw Result:", records)  # Debugging output

            if not records:
                return json.dumps({"message": "No records found for the given diagnosis ID."}, default=serialize_date), 404

            column_names = result.keys()
            patient_record = [dict(zip(column_names, row)) for row in records]
            
            return json.dumps({"data": patient_record}, default=serialize_date), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Ensure rollback on errors
        error_message = str(e.__dict__.get("orig", e))
        return json.dumps({"error": "An error occurred while retrieving patient instance.", "details": error_message}, default=serialize_date), 500

    finally:
        db.session.close()  # Ensure the session is properly closed



def get_lab_reports(diagnosis_id):
    try:
        with db.session.begin():  # Ensure transaction safety
            result = db.session.execute(
                text("CALL GetLabReportsByDiagnosisId(:diagnosis_id)"),
                {"diagnosis_id": diagnosis_id}
            )
            records = result.fetchall()
            print("Raw Result:", records)  # Debugging output

            if not records:
                return json.dumps({"message": "No records found for the given diagnosis ID."}, default=serialize_date), 404

            column_names = result.keys()
            patient_record = [dict(zip(column_names, row)) for row in records]
            
            return json.dumps({"data": patient_record}, default=serialize_date), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Ensure rollback on errors
        error_message = str(e.__dict__.get("orig", e))
        return json.dumps({"error": "An error occurred while retrieving patient instance.", "details": error_message}, default=serialize_date), 500

    finally:
        db.session.close()  # Ensure the session is properly closed

def get_lab_requests(diagnosis_id):
    try:
        with db.session.begin():  # Ensure transaction safety
            result = db.session.execute(
                text("CALL GetLabRequestsByDiagnosisId(:diagnosis_id)"),
                {"diagnosis_id": diagnosis_id}
            )
            records = result.fetchall()
            print("Raw Result:", records)  # Debugging output

            if not records:
                return json.dumps({"message": "No records found for the given diagnosis ID."}, default=serialize_date), 404

            column_names = result.keys()
            patient_record = [dict(zip(column_names, row)) for row in records]
            
            return json.dumps({"data": patient_record}, default=serialize_date), 200

    except SQLAlchemyError as e:
        db.session.rollback()  # Ensure rollback on errors
        error_message = str(e.__dict__.get("orig", e))
        return json.dumps({"error": "An error occurred while retrieving patient instance.", "details": error_message}, default=serialize_date), 500

    finally:
        db.session.close()  # Ensure the session is properly closed

