from flask import Blueprint, jsonify
from sqlalchemy import text
from config.model import  db


bp_analytics = Blueprint('analytics', __name__)

@bp_analytics.route('/Insight_GetPatientCountByGender', methods=['GET'])
def Insight_GetPatientCountByGender():
    from sqlalchemy.exc import SQLAlchemyError
    try:
        # Call the stored procedure using raw SQL
        result = db.session.execute(text("CALL Insight_GetPatientCountByGender()"))
        records = result.fetchall()
        
        # Get column names from the result's metadata
        column_names = result.keys()

        # Convert each row to a dictionary
        patient_records = [dict(zip(column_names, row)) for row in records]

        return jsonify(patient_records), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

@bp_analytics.route('/Insight_GetTestRequestsByPriority', methods=['GET'])
def Insight_GetTestRequestsByPriority():
    from sqlalchemy.exc import SQLAlchemyError
    try:
        result = db.session.execute(text("CALL Insight_GetTestRequestsByPriority()"))
        records = result.fetchall()
        column_names = result.keys()
        test_requests = [dict(zip(column_names, row)) for row in records]
        return jsonify(test_requests), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500
    
@bp_analytics.route('/Insight_GetTestRequestsByStatus', methods=['GET'])
def Insight_GetTestRequestsByStatus():
    from sqlalchemy.exc import SQLAlchemyError
    try:
        result = db.session.execute(text("CALL Insight_GetTestRequestsByStatus()"))
        records = result.fetchall()
        column_names = result.keys()
        test_requests = [dict(zip(column_names, row)) for row in records]
        return jsonify(test_requests), 200
    except SQLAlchemyError as e:
        return jsonify({"error": str(e)}), 500

# ----------------------------------------------------- TARGETED ----------------------------------------------------------    
