import { getToken } from "@/hooks/auth"; // Assuming you have a helper function to get the JWT token
import { PatientContext } from "@/types/PatientContext";
import { Patient } from "@/types/Patients";

export const fetchPatients = async (): Promise<Patient[]> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      "http://127.0.0.1:5000/api/GetAllActivePatients",
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((patient: any) => ({
      id: patient.id,
      user_id: patient.user_id || null, // Ensure null if user_id is missing
      first_name: patient.first_name,
      last_name: patient.last_name,
      date_of_birth: patient.date_of_birth, // Ensure it's in ISO format
      gender: patient.gender, // Ensure it matches "Male" or "Female"
      phone_number: patient.phone_number,
      marital_status: patient.marital_status,
      occupation: patient.occupation || null, // Ensure null if occupation is missing
      nationality: patient.nationality,
      email: patient.email || null, // Ensure null if email is missing
      profile_picture: patient.profile_picture || null, // Ensure null if profile_picture is missing
    }));

    return processedData as Patient[];
  } catch (error) {
    console.error("Error fetching patients:", error);
    return []; // Return an empty array in case of an error
  }
};

export const fetchAllPatients = async (): Promise<Patient[]> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch("http://127.0.0.1:5000/api/GetAllPatients", {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
      },
    });

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((patient: any) => ({
      id: patient.id,
      user_id: patient.user_id || null, // Ensure null if user_id is missing
      first_name: patient.first_name,
      last_name: patient.last_name,
      date_of_birth: patient.date_of_birth, // Ensure it's in ISO format
      gender: patient.gender, // Ensure it matches "Male" or "Female"
      phone_number: patient.phone_number,
      marital_status: patient.marital_status,
      occupation: patient.occupation || null, // Ensure null if occupation is missing
      nationality: patient.nationality,
      email: patient.email || null, // Ensure null if email is missing
      profile_picture: patient.profile_picture || null, // Ensure null if profile_picture is missing
    }));

    return processedData as Patient[];
  } catch (error) {
    console.error("Error fetching patients:", error);
    return []; // Return an empty array in case of an error
  }
};

export const fetchInavtivePatients = async (): Promise<Patient[]> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      "http://127.0.0.1:5000/api/GetAllInactivePatients",
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((patient: any) => ({
      id: patient.id,
      user_id: patient.user_id || null, // Ensure null if user_id is missing
      first_name: patient.first_name,
      last_name: patient.last_name,
      date_of_birth: patient.date_of_birth, // Ensure it's in ISO format
      gender: patient.gender, // Ensure it matches "Male" or "Female"
      phone_number: patient.phone_number,
      marital_status: patient.marital_status,
      occupation: patient.occupation || null, // Ensure null if occupation is missing
      nationality: patient.nationality,
      email: patient.email || null, // Ensure null if email is missing
      profile_picture: patient.profile_picture || null, // Ensure null if profile_picture is missing
    }));

    return processedData as Patient[];
  } catch (error) {
    console.error("Error fetching patients:", error);
    return []; // Return an empty array in case of an error
  }
};

export const fetchBlockedPatients = async (): Promise<Patient[]> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      "http://127.0.0.1:5000/api/GetAllBlockedPatients",
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((patient: any) => ({
      id: patient.id,
      user_id: patient.user_id || null, // Ensure null if user_id is missing
      first_name: patient.first_name,
      last_name: patient.last_name,
      date_of_birth: patient.date_of_birth, // Ensure it's in ISO format
      gender: patient.gender, // Ensure it matches "Male" or "Female"
      phone_number: patient.phone_number,
      marital_status: patient.marital_status,
      occupation: patient.occupation || null, // Ensure null if occupation is missing
      nationality: patient.nationality,
      email: patient.email || null, // Ensure null if email is missing
      profile_picture: patient.profile_picture || null, // Ensure null if profile_picture is missing
    }));

    return processedData as Patient[];
  } catch (error) {
    console.error("Error fetching patients:", error);
    return []; // Return an empty array in case of an error
  }
};

export const fetchActivePatientContext = async (): Promise<
  PatientContext[]
> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      "http://127.0.0.1:5000/api/GetActivePatientContext",
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((context: any) => ({
      patient_id: context.patient_id,
      first_name: context.first_name,
      last_name: context.last_name,
      date_of_birth: context.date_of_birth,
      gender: context.gender,
      phone_number: context.phone_number,
      marital_status: context.marital_status,
      occupation: context.occupation || null,
      nationality: context.nationality,
      email: context.email || null,
      profile_picture: context.profile_picture || null,
      is_active: context.is_active === 1,

      // Patient Instance Details
      instance_id: context.instance_id,
      chief_complaints: context.chief_complaints || null,
      symptoms: context.symptoms || null,
      symptom_details: context.symptom_details || null,
      pain_details: context.pain_details || null,
      duration_of_illness: context.duration_of_illness || null,
      remedies_tried: context.remedies_tried || null,
      vitals: context.vitals || null,
      weight: context.weight,
      height: context.height,
      age: context.age,
      ongoing_medications: context.ongoing_medications || null,
      lifestyle_factors: context.lifestyle_factors || null,
      allergies_and_alerts: context.allergies_and_alerts || null,
      nurses_notes: context.nurses_notes || null,
      instance_summary: context.instance_summary || null,

      // Patient Diagnosis Details
      diagnosis_id: context.diagnosis_id,
      doctor_id: context.doctor_id || null,
      diagnosis_code: context.diagnosis_code || null,
      diagnosis_date: context.diagnosis_date,
      status: context.status,
      notes: context.notes || null,
      created_at: context.created_at,
      updated_at: context.updated_at,
      final_diagnosis: context.final_diagnosis || null,
    }));

    return processedData as PatientContext[];
  } catch (error) {
    console.error("Error fetching active patient context:", error);
    return []; // Return an empty array in case of an error
  }
};

export const fetchCompletedPatientContext = async (): Promise<
  PatientContext[]
> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      "http://127.0.0.1:5000/api/GetCompletedPatientContext",
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((context: any) => ({
      patient_id: context.patient_id,
      first_name: context.first_name,
      last_name: context.last_name,
      date_of_birth: context.date_of_birth,
      gender: context.gender,
      phone_number: context.phone_number,
      marital_status: context.marital_status,
      occupation: context.occupation || null,
      nationality: context.nationality,
      email: context.email || null,
      profile_picture: context.profile_picture || null,
      is_active: context.is_active === 1,

      // Patient Instance Details
      instance_id: context.instance_id,
      chief_complaints: context.chief_complaints || null,
      symptoms: context.symptoms || null,
      symptom_details: context.symptom_details || null,
      pain_details: context.pain_details || null,
      duration_of_illness: context.duration_of_illness || null,
      remedies_tried: context.remedies_tried || null,
      vitals: context.vitals || null,
      weight: context.weight,
      height: context.height,
      age: context.age,
      ongoing_medications: context.ongoing_medications || null,
      lifestyle_factors: context.lifestyle_factors || null,
      allergies_and_alerts: context.allergies_and_alerts || null,
      nurses_notes: context.nurses_notes || null,
      instance_summary: context.instance_summary || null,

      // Patient Diagnosis Details
      diagnosis_id: context.diagnosis_id,
      doctor_id: context.doctor_id || null,
      diagnosis_code: context.diagnosis_code || null,
      diagnosis_date: context.diagnosis_date,
      status: context.status,
      notes: context.notes || null,
      created_at: context.created_at,
      updated_at: context.updated_at,
      final_diagnosis: context.final_diagnosis || null,
    }));

    return processedData as PatientContext[];
  } catch (error) {
    console.error("Error fetching completed patient context:", error);
    return []; // Return an empty array in case of an error
  }
};

export const fetchActivePatientContextByDoctorId = async (
  doctorId: string
): Promise<PatientContext[]> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      `http://127.0.0.1:5000/api/ActivePatientContextByDoctorId?doctor_id=${doctorId}`,
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((context: any) => ({
      patient_id: context.patient_id,
      first_name: context.first_name,
      last_name: context.last_name,
      date_of_birth: context.date_of_birth,
      gender: context.gender,
      phone_number: context.phone_number,
      marital_status: context.marital_status,
      occupation: context.occupation || null,
      nationality: context.nationality,
      email: context.email || null,
      profile_picture: context.profile_picture || null,
      is_active: context.is_active === 1,

      // Patient Instance Details
      instance_id: context.instance_id,
      chief_complaints: context.chief_complaints || null,
      symptoms: context.symptoms || null,
      symptom_details: context.symptom_details || null,
      pain_details: context.pain_details || null,
      duration_of_illness: context.duration_of_illness || null,
      remedies_tried: context.remedies_tried || null,
      vitals: context.vitals || null,
      weight: context.weight,
      height: context.height,
      age: context.age,
      ongoing_medications: context.ongoing_medications || null,
      lifestyle_factors: context.lifestyle_factors || null,
      allergies_and_alerts: context.allergies_and_alerts || null,
      nurses_notes: context.nurses_notes || null,
      instance_summary: context.instance_summary || null,

      // Patient Diagnosis Details
      diagnosis_id: context.diagnosis_id,
      doctor_id: context.doctor_id || null,
      diagnosis_code: context.diagnosis_code || null,
      diagnosis_date: context.diagnosis_date,
      status: context.status,
      notes: context.notes || null,
      created_at: context.created_at,
      updated_at: context.updated_at,
      final_diagnosis: context.final_diagnosis || null,
    }));

    return processedData as PatientContext[];
  } catch (error) {
    console.error("Error fetching active patient context by doctor ID:", error);
    return []; // Return an empty array in case of an error
  }
};

export const fetchCompletedPatientContextByDoctorId = async (
  doctorId: string
): Promise<PatientContext[]> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      `http://127.0.0.1:5000/api/CompletedPatientContextByDoctorId?doctor_id=${doctorId}`,
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((context: any) => ({
      patient_id: context.patient_id,
      first_name: context.first_name,
      last_name: context.last_name,
      date_of_birth: context.date_of_birth,
      gender: context.gender,
      phone_number: context.phone_number,
      marital_status: context.marital_status,
      occupation: context.occupation || null,
      nationality: context.nationality,
      email: context.email || null,
      profile_picture: context.profile_picture || null,
      is_active: context.is_active === 1,

      // Patient Instance Details
      instance_id: context.instance_id,
      chief_complaints: context.chief_complaints || null,
      symptoms: context.symptoms || null,
      symptom_details: context.symptom_details || null,
      pain_details: context.pain_details || null,
      duration_of_illness: context.duration_of_illness || null,
      remedies_tried: context.remedies_tried || null,
      vitals: context.vitals || null,
      weight: context.weight,
      height: context.height,
      age: context.age,
      ongoing_medications: context.ongoing_medications || null,
      lifestyle_factors: context.lifestyle_factors || null,
      allergies_and_alerts: context.allergies_and_alerts || null,
      nurses_notes: context.nurses_notes || null,
      instance_summary: context.instance_summary || null,

      // Patient Diagnosis Details
      diagnosis_id: context.diagnosis_id,
      doctor_id: context.doctor_id || null,
      diagnosis_code: context.diagnosis_code || null,
      diagnosis_date: context.diagnosis_date,
      status: context.status,
      notes: context.notes || null,
      created_at: context.created_at,
      updated_at: context.updated_at,
      final_diagnosis: context.final_diagnosis || null,
    }));

    return processedData as PatientContext[];
  } catch (error) {
    console.error(
      "Error fetching completed patient context by doctor ID:",
      error
    );
    return []; // Return an empty array in case of an error
  }
};

export const fetchActivePatientContextByDoctorUsername = async (
  doctorUsername: string
): Promise<PatientContext[]> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      `http://127.0.0.1:5000/api/ActivePatientContextByDoctorUsername?doctor_username=${doctorUsername}`,
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((context: any) => ({
      patient_id: context.patient_id,
      first_name: context.first_name,
      last_name: context.last_name,
      date_of_birth: context.date_of_birth,
      gender: context.gender,
      phone_number: context.phone_number,
      marital_status: context.marital_status,
      occupation: context.occupation || null,
      nationality: context.nationality,
      email: context.email || null,
      profile_picture: context.profile_picture || null,
      is_active: context.is_active === 1,

      // Patient Instance Details
      instance_id: context.instance_id,
      chief_complaints: context.chief_complaints || null,
      symptoms: context.symptoms || null,
      symptom_details: context.symptom_details || null,
      pain_details: context.pain_details || null,
      duration_of_illness: context.duration_of_illness || null,
      remedies_tried: context.remedies_tried || null,
      vitals: context.vitals || null,
      weight: context.weight,
      height: context.height,
      age: context.age,
      ongoing_medications: context.ongoing_medications || null,
      lifestyle_factors: context.lifestyle_factors || null,
      allergies_and_alerts: context.allergies_and_alerts || null,
      nurses_notes: context.nurses_notes || null,
      instance_summary: context.instance_summary || null,

      // Patient Diagnosis Details
      diagnosis_id: context.diagnosis_id,
      doctor_id: context.doctor_id || null,
      diagnosis_code: context.diagnosis_code || null,
      diagnosis_date: context.diagnosis_date,
      status: context.status,
      notes: context.notes || null,
      created_at: context.created_at,
      updated_at: context.updated_at,
      final_diagnosis: context.final_diagnosis || null,
    }));

    return processedData as PatientContext[];
  } catch (error) {
    console.error(
      "Error fetching active patient context by doctor username:",
      error
    );
    return []; // Return an empty array in case of an error
  }
};

export const fetchCompletedPatientContextByDoctorUsername = async (
  doctorUsername: string
): Promise<PatientContext[]> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      `http://127.0.0.1:5000/api/CompletedPatientContextByDoctorUsername?doctor_username=${doctorUsername}`,
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`, // Include the JWT token in the Authorization header
        },
      }
    );

    if (!response.ok) {
      throw new Error(`Failed to fetch data: ${response.statusText}`);
    }

    const data = await response.json();

    // Validate and process the data
    const processedData = data.map((context: any) => ({
      patient_id: context.patient_id,
      first_name: context.first_name,
      last_name: context.last_name,
      date_of_birth: context.date_of_birth,
      gender: context.gender,
      phone_number: context.phone_number,
      marital_status: context.marital_status,
      occupation: context.occupation || null,
      nationality: context.nationality,
      email: context.email || null,
      profile_picture: context.profile_picture || null,
      is_active: context.is_active === 1,

      // Patient Instance Details
      instance_id: context.instance_id,
      chief_complaints: context.chief_complaints || null,
      symptoms: context.symptoms || null,
      symptom_details: context.symptom_details || null,
      pain_details: context.pain_details || null,
      duration_of_illness: context.duration_of_illness || null,
      remedies_tried: context.remedies_tried || null,
      vitals: context.vitals || null,
      weight: context.weight,
      height: context.height,
      age: context.age,
      ongoing_medications: context.ongoing_medications || null,
      lifestyle_factors: context.lifestyle_factors || null,
      allergies_and_alerts: context.allergies_and_alerts || null,
      nurses_notes: context.nurses_notes || null,
      instance_summary: context.instance_summary || null,

      // Patient Diagnosis Details
      diagnosis_id: context.diagnosis_id,
      doctor_id: context.doctor_id || null,
      diagnosis_code: context.diagnosis_code || null,
      diagnosis_date: context.diagnosis_date,
      status: context.status,
      notes: context.notes || null,
      created_at: context.created_at,
      updated_at: context.updated_at,
      final_diagnosis: context.final_diagnosis || null,
    }));

    return processedData as PatientContext[];
  } catch (error) {
    console.error(
      "Error fetching completed patient context by doctor username:",
      error
    );
    return []; // Return an empty array in case of an error
  }
};
