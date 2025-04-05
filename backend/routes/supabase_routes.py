import asyncio
from typing import Dict, List
from venv import logger
from flask_bcrypt import Bcrypt
from flask import Blueprint, Flask, jsonify, request
from flask_jwt_extended import jwt_required
from supabase import create_client, Client
from dotenv import load_dotenv
import os

from components.knowledge_base_module.add.pdf_processor_c import process_and_store_document
from components.knowledge_base_module.add.sitemap_processor import SiteMapProcessor
from components.knowledge_base_module.add.web_link_processor import WebCrawlerProcessor
from config.model import AppUser

# Initialize Bcrypt for password hashing
bcrypt = Bcrypt()

# Load environment variables from .env file
load_dotenv()

# Blueprint and chatbot instance
supabase_bp = Blueprint("supa", __name__)

# Initialize Supabase client using environment variables
supabase_url = os.getenv("SUPABASE_URL")
supabase_key = os.getenv("SUPABASE_SERVICE_KEY")
supabase: Client = create_client(supabase_url, supabase_key)

# Route to fetch all site pages
@supabase_bp.route('/GetAllSitePages', methods=['GET'])
@jwt_required()
def GetAllSitePages():
    try:
        # Fetch all records from the site_pages table
        response = supabase.table("site_pages").select("*").execute()
        
        # Extract data from the response
        site_pages_records = response.data

        return jsonify(site_pages_records), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500

# Route to delete a site page by id
@supabase_bp.route('/DeleteSitePage', methods=['POST'])
@jwt_required()
def DeleteSitePage():
    try:
        # Get data from the request body
        data = request.json
        page_id = data.get('page_id')
        current_password = data.get('current_password')
        username = data.get('username')

        # Validate required fields
        if not all([page_id, current_password, username]):
            logger.error("Missing required fields in request.")
            return jsonify({"error": "All fields are required."}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            logger.error(f"User not found: {username}")
            return jsonify({"error": "User not found."}), 404

        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            logger.error("Incorrect password provided.")
            return jsonify({"error": "Password is incorrect."}), 403

        # Fetch the site page to ensure it exists
        site_page = supabase.table("site_pages").select("*").eq("id", page_id).execute()
        if not site_page.data:
            logger.error(f"Site page not found: {page_id}")
            return jsonify({"error": "Site page not found."}), 404

        # Delete the site page
        supabase.table("site_pages").delete().eq("id", page_id).execute()
        logger.info(f"Site page deleted successfully: {page_id}")

        return jsonify({"message": "Site page deleted successfully"}), 200

    except Exception as e:
        logger.error(f"An unexpected error occurred: {str(e)}", exc_info=True)
        return jsonify({"error": "An unexpected error occurred.", "details": str(e)}), 500
    
# Route to process a PDF file
@supabase_bp.route('/ProcessPDF', methods=['POST'])
@jwt_required()
def process_pdf():
    try:
        # Get data from the request
        url = request.form.get('url')
        source = request.form.get('source')
        pdf_file = request.files.get('pdf_file')
        username = request.form.get('username')
        current_password = request.form.get('current_password')

        if not all([url, source, pdf_file]):
            return jsonify({"error": "Missing required fields"}), 400
        
         # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            logger.error(f"User not found: {username}")
            return jsonify({"error": "User not found."}), 404

        # Verify current password with bcrypt
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            logger.error("Incorrect password provided.")
            return jsonify({"error": "Password is incorrect."}), 403

        # Process the PDF file
        asyncio.run(process_and_store_document(url, source, pdf_file))

        return jsonify({"message": "PDF processed successfully"}), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@supabase_bp.route('/ProcessWebCrawl', methods=['POST'])
@jwt_required()
def process_web_crawl():
    try:
        # Get data from the request
        url = request.form.get('url')
        source = request.form.get('source')
        username = request.form.get('username')
        current_password = request.form.get('current_password')

        # Validate required fields
        if not all([url, source, username, current_password]):
            return jsonify({"error": "Missing required fields"}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            return jsonify({"error": "User not found"}), 404

        # Verify current password
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Incorrect password"}), 403

        # Process the web crawl asynchronously
        async def run_crawl():
            async with WebCrawlerProcessor() as processor:
                await processor.crawl_website(url, source)

        # Run the async function in the event loop
        asyncio.run(run_crawl())

        return jsonify({"message": "Web crawl processed successfully"}), 200
    except Exception as e:
        print(f"Error in process_web_crawl: {e}")
        return jsonify({"error": str(e)}), 500

@supabase_bp.route('/ProcessSiteMap', methods=['POST'])
@jwt_required()
def process_site_map():
    try:
        # Get data from the request
        sitemap_file = request.files.get('sitemap_file')
        source = request.form.get('source')
        username = request.form.get('username')
        current_password = request.form.get('current_password')

        # Validate required fields
        if not all([sitemap_file, source, username, current_password]):
            return jsonify({"error": "Missing required fields"}), 400

        # Fetch the user from the database
        user = AppUser.query.filter_by(username=username).first()
        if not user:
            return jsonify({"error": "User not found"}), 404

        # Verify current password
        if not bcrypt.check_password_hash(user.password_hash, current_password):
            return jsonify({"error": "Incorrect password"}), 403

        # Process the sitemap file asynchronously
        async def run_sitemap_processing():
            async with SiteMapProcessor() as processor:
                await processor.process_sitemap_file(sitemap_file, source)

        # Run the async function in the event loop
        asyncio.run(run_sitemap_processing())

        return jsonify({"message": "Sitemap processed successfully"}), 200
    except Exception as e:
        print(f"Error in process_site_map: {e}")
        return jsonify({"error": str(e)}), 500