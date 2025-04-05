"use client";

import { useRouter } from "next/navigation";
import { useAuth } from "@/context/AuthProvider";
import { useEffect, useState } from "react";
import LoadingSpinner from "@/components/loading-spinner";

interface PrivateRouteProps {
  children: React.ReactNode;
  requiredRole?: string;
}

export default function PrivateRoute({
  children,
  requiredRole,
}: PrivateRouteProps) {
  const { isAuthenticated, role } = useAuth();
  const router = useRouter();
  const [loading, setLoading] = useState(true); // Track loading state for smooth redirection

  useEffect(() => {
    if (isAuthenticated === false) {
      router.push("/login");
    } else if (requiredRole && role !== requiredRole) {
      router.push("/error/unauthorized");
    } else {
      setLoading(false); // Allow content to render if authorized
    }
  }, [isAuthenticated, role, requiredRole, router]);

  // Render a placeholder (or spinner) while determining access
  if (loading || isAuthenticated === false) {
    return (
      <div className="flex justify-center items-center h-screen">
        <LoadingSpinner />
      </div>
    );
  }

  return <>{children}</>;
}
