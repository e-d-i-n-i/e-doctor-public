# E-Doctor: AI-Powered Expert System for Medical Prescription

## Overview

E-Doctor is an AI-powered expert system designed to assist healthcare professionals in diagnosing patients, prescribing treatments, and offering personalized health recommendations. Built with a modular architecture and role-based access, the system supports doctors, nurses, lab technicians, and patients in delivering efficient and accurate healthcare services.

## Features

- **AI-Driven Diagnosis and Prescription:** Uses patient history and diagnostics to generate prescriptions and recommendations.
- **Role-Based Access:** Tailored interfaces and functionalities for doctors, nurses, laboratory technicians, and patients.
- **AI Chat System:** Interactive AI chat for doctors to discuss cases and receive follow-up questions or suggestions.
- **Secure User Management:** JWT authentication and RBAC ensure data privacy and proper access control.
- **Microservices Architecture:** Modular components for scalability and easy maintenance.
- **Structured Data Management:** Uses MySQL for relational data and Supabase for vectorized data, enabling semantic search and RAG workflows.

## Tech Stack

- **Frontend:** Next.js, React, Tailwind CSS
- **Backend:** Flask, Python, LangChain
- **AI Models:** OpenAI GPT-4.0, Retrieval-Augmented Generation (RAG)
- **Database:** MySQL, Supabase (for vector search)
- **Security:** JWT Authentication, Role-Based Access Control (RBAC)

## Installation

### Prerequisites

- Node.js 18+
- Python 3.9+
- MySQL Server
- Supabase Account
- OpenAI API Key

### Setup Instructions

1. Clone the repository:

   ```sh
   git clone https://github.com/e-d-i-n-i/e-doctor-public.git
   cd e-doctor
   ```

2. **Frontend Setup**

   ```sh
   cd frontend
   npm install
   npm run dev
   ```

3. **Backend Setup**

   ```sh
   cd ../server
   python -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   flask run
   ```

4. Configure environment variables in `.env` files for both frontend and backend:
   ```env
   OPENAI_API_KEY=your_openai_key
   SUPABASE_URL=your_supabase_url
   SUPABASE_KEY=your_supabase_key
   MYSQL_URI=mysql://user:password@localhost/edoctor
   SECRET_KEY=your_secret_key
   ```

## Usage

- **Doctors** can log in, access patient data, chat with AI, and issue prescriptions.
- **Nurses** handle patient registration, initial data entry, and appointment scheduling.
- **Lab Technicians** submit lab results based on doctor requests.
- **Patients** can view their diagnoses, lab results, and receive follow-up advice.

## Contributing

We welcome contributions from the open-source community:

1. Fork the repository.
2. Create a new branch (`feature-name`).
3. Make your changes and commit.
4. Open a pull request.

## License

This project is licensed under the MIT License.

## Contact

For inquiries or support, contact **Edini Amare** at [edini.amare.gw@gmail.com] or visit [www.edini.dev].
