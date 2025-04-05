export type OrganizationUser = {
  address: string;
  created_at: string; // ISO date string
  date_of_joining: string; // ISO date string
  department: string;
  email: string;
  emergency_contact: string;
  employment_type: "Full-time" | "Part-time" | "Contract" | "Internship"; // Assuming specific employment types
  first_name: string;
  gender: "male" | "female"; // Assuming specific gender options
  id: string;
  is_active: number; // 1 for active, 0 for inactive
  last_name: string;
  phone_number: string;
  role: string;
  salary: string; // Represented as a string, but could be parsed to a number if needed
  shift: string; // Could be more specific like "day" | "night" | "evening"
  supervisor_id: string;
  user_is_active: number; // 1 for active, 0 for inactive
  username: string;
  profile_picture: string;
};
