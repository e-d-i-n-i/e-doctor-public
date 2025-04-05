import * as z from "zod";

export type PriorityLevel = "Low" | "Normal" | "High" | "Urgent";
export type TestStatus = "Pending" | "In Progress" | "Completed" | "Cancelled";

export const laboratoryTestRequestSchema = z.object({
  diagnosis_id: z.string().min(1, "Diagnosis ID is required"),
  test_type: z.string().min(1, "Test type is required"),
  test_details: z.string().optional(),
  priority_level: z.enum(["Low", "Normal", "High", "Urgent"]),
  comments: z.string().optional(),
});

export type LaboratoryTestRequest = z.infer<typeof laboratoryTestRequestSchema>;

export const bulkLaboratoryTestRequestSchema = z
  .array(laboratoryTestRequestSchema)
  .min(1, "At least one record is required");

export interface viewLaboratoryRequest {
  id: string;
  diagnosis_id: string;
  test_type: string;
  test_details: string;
  priority_level: string;
  status: string;
  comments: string;
  patient: string;
  updated_at: string;
  requested_at: string;
  completed_at: string;
}
