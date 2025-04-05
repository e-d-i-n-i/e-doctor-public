export interface AppUser {
  id: string;
  username: string;
  role: string;
  is_active: boolean;
  last_login?: string;
  created_at?: string;
  updated_at?: string;
}

export interface OrganizationStaff {
  id: string;
  user_id: string;
  first_name: string;
  last_name: string;
  role: string;
  department: string;
  email: string;
  phone_number: string;
  employment_type: string;
  date_of_joining?: string;
  is_active: boolean;
  salary?: string;
  shift?: string;
  supervisor_id?: string;
  address?: string;
  emergency_contact?: string;
  profile_picture?: string;
  updated_at?: string;
}

export interface UserProfile {
  full_name: string;
  email: string;
  profile_image: string | null; // null if no profile image is available
}
