// hooks/useAuthRedirect.ts
import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { clearToken, getToken, getUserRole } from "@/hooks/auth";

export function useAuthRedirect() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const handleAuth = () => {
      const token = getToken();
      if (token) {
        const role = getUserRole();
        redirectToRolePage(role);
      } else {
        setLoading(false);
      }
    };

    const redirectToRolePage = (role: string | null) => {
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
          clearToken();
      }
    };

    handleAuth();
  }, [router]);

  return { loading };
}
