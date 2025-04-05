import base64
from datetime import timedelta
from flask import Blueprint, jsonify, request
from flask_bcrypt import Bcrypt
from flask_jwt_extended import create_access_token, jwt_required, get_jwt_identity
from sqlalchemy.exc import SQLAlchemyError

from config.model import Patient, db, AppUser, OrganizationStaff
from utils.utils import validate_password
from config.schema import app_user_schema, organization_staff_schema

# Initialize Bcrypt for password hashing
bcrypt = Bcrypt()

# Create a Blueprint for authentication routes
bp_auth = Blueprint('authentication', __name__)

# Login route
@bp_auth.route('/app_users/login', methods=['POST'])
def login():
    try:
        # Get the data from the request
        data = request.get_json()
        username = data.get('username', '').strip()  # Strip to remove leading/trailing whitespace
        password = data.get('password', '').strip()

        # Check for missing fields
        if not username or not password:
            return jsonify({"error": "Username and password are required"}), 400

        # Get the user from the database
        user = AppUser.query.filter_by(username=username).first()

        # Check if the user exists and the password is correct
        if not user or not bcrypt.check_password_hash(user.password_hash, password):
            return jsonify({"error": "Invalid username or password"}), 401

        # Check if the user account is active
        if not user.is_active:
            return jsonify({"error": "User account is inactive"}), 403

        # Generate JWT token with user role and username
        token = create_access_token(
            identity=str(user.id),  # `identity` must be a string
            additional_claims={  # Include additional data as claims
                "role": user.role,
                "username": user.username
            },
            expires_delta=timedelta(hours=24)  # Token validity period
        )

        # Return the generated token in the response
        return jsonify({"access_token": token}), 200

    except Exception as e:
        # Handle unexpected errors
        print(f"Unexpected error during login: {e}")
        return jsonify({"error": "An error occurred while processing your request"}), 500


@bp_auth.route('/user_profile/<string:username>', methods=['GET'])
@jwt_required()
def get_user_profile(username):
    # Query the AppUser by username
    user = db.session.query(AppUser).filter_by(username=username).first()
    if not user:
        return jsonify({'error': 'User not found'}), 404

    # Define a mapping of roles to their corresponding models
    role_to_model = {
        "patient": Patient,
        "nurse": OrganizationStaff,  
        "labTech": OrganizationStaff,  
        "doctor": OrganizationStaff,  
        "admin": OrganizationStaff,  # You can adjust this based on roles in your system
    }

    # Get the model based on the user's role, defaulting to OrganizationStaff
    model = role_to_model.get(user.role, OrganizationStaff)

    # Query the database using the selected model
    userData = db.session.query(model).filter_by(user_id=user.id).first()

    if not userData:
        return jsonify({'error': 'No user profile associated with this user'}), 404

    # Prepare the response data
    profile_data = {
        'full_name': f"{userData.first_name} {userData.last_name}",
        'email': userData.email,
        'profile_image': base64.b64encode(userData.profile_picture).decode('utf-8') if userData.profile_picture else None
    }

    return jsonify(profile_data)


@bp_auth.route('/user_details/<string:username>', methods=['GET'])
@jwt_required()
def get_user_details(username):
    # Query the AppUser by username
    user = db.session.query(AppUser).filter_by(username=username).first()
    if not user:
        return jsonify({'error': 'User not found'}), 404

    # Query the OrganizationStaff by user_id
    staff = db.session.query(OrganizationStaff).filter_by(user_id=user.id).first()

    # Serialize the results
    user_data = app_user_schema.dump(user)
    staff_data = organization_staff_schema.dump(staff) if staff else None

    return jsonify({
        'user': user_data,
        'staff': staff_data
    })