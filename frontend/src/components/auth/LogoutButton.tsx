"use client";

import { useRouter } from "next/navigation";
import { useAuth } from "@/context/AuthProvider";
import { Button } from "@/components/ui/button";
import { LogOut } from "lucide-react";

interface LogoutButtonProps {
  className?: string;
}

export default function LogoutButton({ className }: LogoutButtonProps) {
  const { logout } = useAuth();
  const router = useRouter();

  const handleLogout = () => {
    logout(); // Clear the authentication state
    router.push("/login"); // Redirect the user to the login page
  };

  return (
    <Button
      onClick={handleLogout}
      variant="ghost"
      className={`w-full justify-start bg-background text-destructive hover:bg-destructive hover:text-destructive-foreground ${className}`}
    >
      <LogOut className="w-4 h-4 mr-2" />
      <span className="text-sm">Log out</span>
    </Button>
  );
}
