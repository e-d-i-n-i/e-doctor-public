from flask import Flask, jsonify
from flask_marshmallow import Marshmallow
import os
import logging
from config.model import db
from flask_cors import CORS
from config.config import Config
from flask_jwt_extended import JWTManager
from routes.auth_route import bp_auth
from routes.user_update_route import bp_user_update
from routes.analyticst_routes import bp_analytics
from routes.procedure_calls import bp_administrator
from routes.chat_routes import chat_bp
from routes.chat_routes_doc import doc_chat_bp
from routes.supabase_routes import supabase_bp
# Initialize Flask app
app = Flask(__name__)
app.secret_key = os.getenv("FLASK_SECRET_KEY", "default_secret_key")

# Configure logging
logging.basicConfig(level=logging.DEBUG)

# Initialize extensions
ma = Marshmallow()
jwt = JWTManager(app)

# Load configuration
try:
    app.config.from_object(Config)
    CORS(app, supports_credentials=True, origins=["http://localhost:3000"])
    
    # Initialize database
    db.init_app(app)
    ma.init_app(app)

    # Create database tables
    with app.app_context():
        db.create_all()

except Exception as e:
    logging.error(f"Failed to connect to database: {e}")
    db = None

# Register routes
app.register_blueprint(bp_auth, url_prefix="/authentication")
app.register_blueprint(bp_user_update, url_prefix="/api")
app.register_blueprint(bp_analytics, url_prefix="/api")
app.register_blueprint(bp_administrator, url_prefix="/api")
app.register_blueprint(chat_bp, url_prefix="/")
app.register_blueprint(doc_chat_bp, url_prefix="/")
app.register_blueprint(supabase_bp, url_prefix="/api/kb")

# Error handlers
@app.errorhandler(400)
def bad_request(error):
    return jsonify({"error": "Bad request", "message": str(error)}), 400

@app.errorhandler(401)
def unauthorized(error):
    return jsonify({"error": "Unauthorized", "message": str(error)}), 401

@app.errorhandler(403)
def forbidden(error):
    return jsonify({"error": "Forbidden", "message": str(error)}), 403

@app.errorhandler(404)
def not_found(error):
    return jsonify({"error": "Not found", "message": str(error)}), 404

@app.errorhandler(500)
def internal_server_error(error):
    return jsonify({"error": "Internal server error", "message": str(error)}), 500

if __name__ == "__main__":
    app.run(host="127.0.0.1", port=5000, debug=False)