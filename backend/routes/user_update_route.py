from datetime import timedelta
from sqlalchemy import text
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
bp_user_update = Blueprint('UserInformationUpdate', __name__)

@bp_user_update.route("/update_password", methods=["POST"])
@jwt_required()  # Protect this route
def update_password():
    data = request.json
    username = data.get("username")
    current_password = data.get("current_password")
    new_password = data.get("new_password")
    confirm_password = data.get("confirm_password")

    if not all([username, current_password, new_password, confirm_password]):
        return jsonify({"error": "All fields are required."}), 400

    if new_password != confirm_password:
        return jsonify({"error": "New password and confirm password do not match."}), 400

    # Validate new password
    password_validation_error = validate_password(new_password)
    if password_validation_error:
        return jsonify({"error": password_validation_error}), 400

    user = AppUser.query.filter_by(username=username).first()

    if not user:
        return jsonify({"error": "User not found."}), 404

    # Verify current password with bcrypt
    if not bcrypt.check_password_hash(user.password_hash, current_password):
        return jsonify({"error": "Current password is incorrect."}), 403

    # Update password
    try:
        user.password_hash = bcrypt.generate_password_hash(new_password).decode('utf-8')
        db.session.commit()
        return jsonify({"message": "Password updated successfully."}), 200
    except Exception as e:
        db.session.rollback()
        return jsonify({"error": "An error occurred while updating the password.", "details": str(e)}), 500
    

@bp_user_update.route("/update_username", methods=["POST"])
@jwt_required()  # Protect this route
def update_username():
    try:
        # Get the request data
        data = request.get_json()
        required_fields = ['current_username', 'new_username', 'password']

        # Check for missing fields
        if not all(field in data for field in required_fields):
            return jsonify({"error": "Missing required fields"}), 400

        # Fetch the current user from the database
        current_username = data['current_username']
        user = db.session.execute(
            text("SELECT id, password_hash, role FROM app_users WHERE username = :current_username"),
            {"current_username": current_username}
        ).fetchone()

        if not user:
            return jsonify({"error": "User not found"}), 404

        # Verify the current password
        if not bcrypt.check_password_hash(user.password_hash, data['password']):
            return jsonify({"error": "Invalid password"}), 403

        # Check if the new username already exists
        existing_user = db.session.execute(
            text("SELECT 1 FROM app_users WHERE username = :new_username"),
            {"new_username": data['new_username']}
        ).fetchone()

        if existing_user:
            return jsonify({"error": "Username already taken"}), 400

        # Call the stored procedure to update the username
        db.session.execute(
            text("CALL UpdateUserCredentials(:current_username, :new_username)"),
            {
                "current_username": data['current_username'],
                "new_username": data['new_username']
            }
        )
        db.session.commit()

        # Regenerate JWT token with the new username
        new_token = create_access_token(
            identity={
                "id": user.id,
                "username": data['new_username'],  # Use the new username
                "role": user.role  # Use the role from the database
            },
            expires_delta=timedelta(hours=24)  # Set token expiry
        )

        # Return success message and new token
        return jsonify({
            "message": "Username updated successfully",
            "access_token": new_token
        }), 200

    except SQLAlchemyError as e:
        db.session.rollback()
        return jsonify({"error": str(e)}), 500
    except Exception as e:
        return jsonify({"error": "An unexpected error occurred", "details": str(e)}), 500
