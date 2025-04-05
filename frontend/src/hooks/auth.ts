import { UserProfile } from "@/types/User";

// Store token in localStorage
export function setToken(token: string) {
  if (typeof window !== "undefined") {
    localStorage.setItem("authToken", token);
  }
}

// Get token from localStorage with validation
export function getToken(): string | null {
  if (typeof window === "undefined") {
    // Handle the case when running on the server
    return null;
  }

  const token = localStorage.getItem("authToken");
  if (!token) return null;

  try {
    const base64Url = token.split(".")[1];
    const base64 = base64Url.replace(/-/g, "+").replace(/_/g, "/");
    const { exp } = JSON.parse(atob(base64));

    // Check if the token is expired
    if (exp * 1000 < Date.now()) {
      console.warn("Token expired. Clearing token.");
      clearToken();
      return null;
    }
    return token;
  } catch (error) {
    console.error("Error decoding token:", error);
    clearToken();
    return null;
  }
}

// Clear token on logout
export function clearToken() {
  if (typeof window !== "undefined") {
    localStorage.removeItem("authToken");
  }
}

// Fetch user profile
export async function getUserProfile(): Promise<UserProfile | null> {
  const token = getToken(); // Use getToken for validation
  if (!token) {
    console.error("No token found. User is not authenticated.");
    // Redirect to login page or show a message
    redirectToLogin();
    return null;
  }

  const username = getUsername();
  if (!username) {
    console.error("Unable to fetch username from the token.");
    clearToken();
    redirectToLogin();
    return null;
  }

  try {
    const response = await fetch(
      `http://127.0.0.1:5000/authentication/user_profile/${username}`,
      {
        method: "GET",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
      }
    );

    if (!response.ok) {
      if (response.status === 401) {
        console.error("Unauthorized. Clearing token.");
        clearToken();
        redirectToLogin();
      }
      throw new Error(`Failed to fetch user profile: ${response.statusText}`);
    }

    const profile: UserProfile = await response.json();
    return profile;
  } catch (error) {
    console.error("Error fetching user profile:", error);
    return null;
  }
}

// Redirect to login page
function redirectToLogin() {
  if (typeof window !== "undefined") {
    window.location.href = "/login"; // Replace with your login route
  }
}

// Token Refresh Mechanism (Example)
export async function refreshToken(): Promise<string | null> {
  try {
    const response = await fetch(
      "http://127.0.0.1:5000/authentication/refresh",
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          refreshToken: localStorage.getItem("refreshToken"),
        }),
      }
    );

    if (!response.ok) {
      throw new Error("Failed to refresh token");
    }

    const { token } = await response.json();
    setToken(token); // Store the new token
    return token;
  } catch (error) {
    console.error("Error refreshing token:", error);
    clearToken();
    redirectToLogin();
    return null;
  }
}

// Logging utility
export function logError(error: Error, context: string) {
  console.error(`[${context}]`, error);
  // Optionally send the error to a remote logging service
  // Example: sendToLoggingService(error, context);
}

export function getUsername(): string | null {
  const token = getToken();
  if (!token) return null;

  try {
    const base64Url = token.split(".")[1];
    const base64 = base64Url.replace(/-/g, "+").replace(/_/g, "/");
    const decodedPayload = JSON.parse(atob(base64));

    // Check for the `username` claim
    if (decodedPayload?.username) {
      return decodedPayload.username;
    } else {
      console.error("Invalid token structure: Missing `username` claim.");
      return null;
    }
  } catch (err) {
    console.error("Error decoding token:", err);
    return null;
  }
}

export function getUserRole(): string | null {
  const token = getToken();
  if (!token) return null;

  try {
    const base64Url = token.split(".")[1];
    const base64 = base64Url.replace(/-/g, "+").replace(/_/g, "/");
    const decodedPayload = JSON.parse(atob(base64));

    // Check for the `role` claim
    if (decodedPayload?.role) {
      return decodedPayload.role;
    } else {
      console.error("Invalid token structure: Missing `role` claim.");
      return null;
    }
  } catch (err) {
    console.error("Error decoding token:", err);
    return null;
  }
}
