export type Patient = {
  id: string; // UUID
  user_is_active: number; // 1 for active, 0 for inactive
  username: string;
  first_name: string;
  last_name: string;
  date_of_birth: string; // ISO date string or formatted date string
  gender: "male" | "female"; // Assuming specific gender options
  phone_number: string;
  marital_status: string; // Could be more specific like "single" | "married" | "divorced"
  occupation: string | null; // Nullable
  nationality: string;
  email: string | null; // Nullable
  profile_picture: string | null; // Base64 encoded image or URL
  created_at: string; // ISO date string or formatted date string
};
