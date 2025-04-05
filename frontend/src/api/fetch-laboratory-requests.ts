import { getToken } from "@/hooks/auth";
import { LaboratoryTestRequest } from "@/types/LabTestRequest";

const API_BASE_URL = "http://127.0.0.1:5000/api";

const fetchLaboratoryTestRequests = async (
  endpoint: string
): Promise<LaboratoryTestRequest[]> => {
  try {
    const token = getToken();
    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(`${API_BASE_URL}/${endpoint}`, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    });

    if (!response.ok) {
      if (response.status === 404) {
        console.warn("No laboratory test requests found.");
        return [];
      }
      throw new Error(
        `Request failed with status ${response.status}: ${response.statusText}`
      );
    }

    const data = await response.json();

    if (!Array.isArray(data)) {
      console.warn("Unexpected API response format. Expected an array.");
      return [];
    }

    const processedData = data.map((request: any) => ({
      id: request.id,
      diagnosis_id: request.diagnosis_id,
      test_type: request.test_type,
      test_details: request.test_details || null,
      priority_level: request.priority_level,
      status: request.status,
      requested_at: request.requested_at,
      completed_at: request.completed_at || null,
      comments: request.comments || null,
      updated_at: request.updated_at,
    }));

    return processedData as LaboratoryTestRequest[];
  } catch (error) {
    console.error("Error fetching laboratory test requests:", error);
    return [];
  }
};

export const fetchPendingLaboratoryTestRequests = async (): Promise<
  LaboratoryTestRequest[]
> => fetchLaboratoryTestRequests("GetPendingLaboratoryTestRequests");

export const fetchCompletedLaboratoryTestRequests = async (): Promise<
  LaboratoryTestRequest[]
> => fetchLaboratoryTestRequests("GetCompletedLaboratoryTestRequests");
