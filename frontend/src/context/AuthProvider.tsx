"use client";

import React, { createContext, useContext, useState, useEffect } from "react";
import { getToken, getUserRole, clearToken } from "@/hooks/auth";

interface AuthContextType {
  isAuthenticated: boolean;
  role: string | null;
  logout: () => void;
}

const AuthContext = createContext<AuthContextType | null>(null);

export function AuthProvider({ children }: { children: React.ReactNode }) {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [role, setRole] = useState<string | null>(null);
  const [loading, setLoading] = useState(true); // Add loading state to ensure authentication is checked before rendering children

  useEffect(() => {
    const token = getToken();
    if (token) {
      setIsAuthenticated(true);
      setRole(getUserRole());
    }
    setLoading(false); // Set loading to false after checking token
  }, []);

  const logout = () => {
    clearToken();
    setIsAuthenticated(false);
    setRole(null);
  };

  return (
    <AuthContext.Provider value={{ isAuthenticated, role, logout }}>
      {!loading && children} {/* Render children only after loading */}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error("useAuth must be used within an AuthProvider");
  }
  return context;
}
