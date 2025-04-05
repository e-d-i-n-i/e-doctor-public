import { useState } from "react";
import { getUserRole, setToken } from "@/hooks/auth";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

export function useAuth() {
  const [isLoading, setIsLoading] = useState(false);
  const router = useRouter();

  const redirectToRolePage = (role: string) => {
    switch (role) {
      case "doctor":
        router.push("/doctor");
        break;
      case "patient":
        router.push("/patient");
        break;
      case "labTech":
        router.push("/labTech");
        break;
      case "nurse":
        router.push("/nurse");
        break;
      case "admin":
        router.push("/admin");
        break;
      default:
        console.error("Invalid role");
        router.push("/");
    }
  };

  const login = async (username: string, password: string) => {
    setIsLoading(true);

    try {
      const res = await fetch(
        "http://127.0.0.1:5000/authentication/app_users/login",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ username, password }),
        }
      );

      if (!res.ok) {
        const errorData = await res.json();
        toast.error("Login failed", {
          description: errorData.error || "Invalid credentials",
          position: "bottom-right",
        });
        return;
      }

      const { access_token } = await res.json();
      setToken(access_token);

      const role = getUserRole();
      if (role) {
        toast.success("Login successful!", {
          description: `Welcome, ${role}!`,
          position: "bottom-right",
        });
        redirectToRolePage(role);
      } else {
        toast.error("Login failed", {
          description: "Failed to determine user role.",
          position: "bottom-right",
        });
      }
    } catch (err) {
      console.error("Login error:", err);
      toast.error("Login failed", {
        description: "An unexpected error occurred. Please try again.",
        position: "bottom-right",
      });
    } finally {
      setIsLoading(false);
    }
  };

  return { login, isLoading };
}
