export type PatientContext = {
  patient_id: string; // UUID
  first_name: string;
  last_name: string;
  date_of_birth: string; // ISO date string
  gender: "Male" | "Female"; // Assuming specific gender options
  phone_number: string;
  marital_status: string; // Could be more specific like "single" | "married" | "divorced"
  occupation: string | null; // Nullable
  nationality: string;
  email: string | null; // Nullable
  profile_picture: string | null; // Base64 encoded image
  is_active: boolean; // 1 for active, 0 for inactive

  // Patient Instance Details
  instance_id: string; // UUID
  chief_complaints: string | null;
  symptoms: string | null;
  symptom_details: object | null; // JSON object
  pain_details: object | null; // JSON object
  duration_of_illness: string | null;
  remedies_tried: string | null;
  vitals: object | null; // JSON object
  weight: number;
  height: number;
  age: number;
  ongoing_medications: string | null;
  lifestyle_factors: object | null; // JSON object
  allergies_and_alerts: string | null;
  nurses_notes: string | null;
  instance_summary: string | null;

  // Patient Diagnosis Details
  diagnosis_id: string; // UUID
  doctor_id: string | null; // UUID
  diagnosis_code: string | null;
  diagnosis_date: string; // ISO date string
  status: "active" | "completed"; // Assuming specific status options
  notes: string | null;
  created_at: string; // ISO date string
  updated_at: string; // ISO date string
  final_diagnosis: string | null;
};
