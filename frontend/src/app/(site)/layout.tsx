"use client";
import "../globals.css";
import { Background } from "@/components/backgrounds";
import { Nav } from "@/components/nav";
import { End } from "@/components/site/end";
import { Suspense } from "react"; // Import Suspense
import LoadingSpinner from "@/components/loading-spinner"; // Import your LoadingSpinner component

import React from "react";
import { useAuthRedirect } from "@/hooks/useAuthRedirect";

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const { loading } = useAuthRedirect();

  if (loading) {
    return <LoadingSpinner />;
  }

  return (
    <div className="px-4 xl:px-0 font-expose">
      <Nav />
      <Suspense fallback={<LoadingSpinner />}>{children}</Suspense>
      <Background />
      <End />
    </div>
  );
}
