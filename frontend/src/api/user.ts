import { AppUser, OrganizationStaff, UserProfile } from "@/types/User";
import { getToken } from "@/hooks/auth";

export async function fetchUserDetails(
  username: string
): Promise<{ user: AppUser; staff: OrganizationStaff | null }> {
  const token = getToken(); // Retrieve the token
  if (!token) {
    throw new Error("No token found. User is not authenticated.");
  }

  const response = await fetch(
    `http://127.0.0.1:5000/authentication/user_details/${username}`,
    {
      headers: {
        Authorization: `Bearer ${token}`, // Include the token
        "Content-Type": "application/json",
      },
    }
  );

  if (!response.ok) {
    throw new Error("Failed to fetch user details.");
  }

  return await response.json();
}

export async function fetchUserProfile(username: string): Promise<UserProfile> {
  const token = getToken(); // Retrieve the token
  if (!token) {
    throw new Error("No token found. User is not authenticated.");
  }

  const response = await fetch(
    `http://127.0.0.1:5000/authentication/user_profile/${username}`,
    {
      headers: {
        Authorization: `Bearer ${token}`, // Include the token
        "Content-Type": "application/json",
      },
    }
  );

  if (!response.ok) {
    throw new Error("Failed to fetch user profile.");
  }

  return await response.json();
}

export async function updatePassword(
  username: string,
  currentPassword: string,
  newPassword: string,
  confirmPassword: string
): Promise<{ message: string }> {
  const token = getToken(); // Retrieve the token
  if (!token) {
    throw new Error("No token found. User is not authenticated.");
  }

  const response = await fetch("http://127.0.0.1:5000/api/update_password", {
    method: "POST",
    headers: {
      Authorization: `Bearer ${token}`, // Include the token
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      username,
      current_password: currentPassword,
      new_password: newPassword,
      confirm_password: confirmPassword,
    }),
  });

  if (!response.ok) {
    const errorDetails = await response.json();
    throw new Error(errorDetails.error || "Failed to update password.");
  }

  return await response.json();
}

export async function updateUsername(
  currentUsername: string,
  newUsername: string,
  password: string
): Promise<{ message: string }> {
  const token = getToken(); // Retrieve the token
  if (!token) {
    throw new Error("No token found. User is not authenticated.");
  }

  const response = await fetch("http://127.0.0.1:5000/api/update_username", {
    method: "POST",
    headers: {
      Authorization: `Bearer ${token}`, // Include the token
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      current_username: currentUsername,
      new_username: newUsername,
      password,
    }),
  });

  if (!response.ok) {
    const errorDetails = await response.json();
    throw new Error(errorDetails.error || "Failed to update username.");
  }

  return await response.json();
}
