"use client";

import { useEffect } from "react";
import { useRouter } from "next/navigation";
import { getToken, getUserRole } from "@/hooks/auth";
import LoginForm from "@/components/auth/LoginForm";

export default function LoginPage() {
  const router = useRouter();

  useEffect(() => {
    const token = getToken();
    if (token) {
      const role = getUserRole();
      if (role) {
        router.push(`/${role}`);
      }
    }
  }, [router]);

  return (
    <div className="flex min-h-svh flex-col items-center justify-center gap-6  p-6 md:p-10">
      <div className="w-full max-w-sm">
        <LoginForm />
      </div>
    </div>
  );
}
