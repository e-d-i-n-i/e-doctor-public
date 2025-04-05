export type LaboratoryTestRequest = {
  id: string;
  diagnosis_id: string;
  test_type: string;
  test_details: string | null;
  priority_level: "Low" | "Normal" | "High" | "Urgent";
  status: "Pending" | "In Progress" | "Completed" | "Cancelled";
  requested_at: string; // ISO date string
  completed_at: string | null; // ISO date string
  comments: string | null;
  updated_at: string; // ISO date string
};
