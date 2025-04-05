import { type OrganizationUser } from "@/types/OrganizationUser";
import { getToken } from "@/hooks/auth"; // Import getToken

export const Active_Organization_Users = async (): Promise<
  OrganizationUser[]
> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      "http://127.0.0.1:5000/api/GetAllActiveOrganizationUsers",
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
    const processedData = data.map((user: any) => ({
      id: user.id,
      first_name: user.first_name,
      last_name: user.last_name,
      profile_picture: user.profile_picture || null, // Ensure null if profile_picture is missing
      gender: user.gender,
      role: user.role,
      department: user.department,
      // Add other fields as needed
    }));

    return processedData as OrganizationUser[];
  } catch (error) {
    console.error("Error fetching active people:", error);
    return []; // Return an empty array in case of an error
  }
};

// Function to fetch inactive people from the API
export const Inactive_Organization_Users = async (): Promise<
  OrganizationUser[]
> => {
  try {
    // Use the helper function to get the token
    const token = getToken();

    if (!token) {
      throw new Error("No JWT token found. Please log in.");
    }

    const response = await fetch(
      "http://127.0.0.1:5000/api/GetAllInactiveOrganizationUsers",
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
    const processedData = data.map((user: any) => ({
      id: user.id,
      first_name: user.first_name,
      last_name: user.last_name,
      profile_picture: user.profile_picture || null, // Ensure null if profile_picture is missing
      gender: user.gender,
      role: user.role,
      department: user.department,
      // Add other fields as needed
    }));

    return processedData as OrganizationUser[];
  } catch (error) {
    console.error("Error fetching inactive people:", error);
    return []; // Return an empty array in case of an error
  }
};
