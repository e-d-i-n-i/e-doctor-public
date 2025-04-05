"use client";

import React from "react";
import { ErrorBoundary } from "react-error-boundary";
import { useAuthRedirect } from "@/hooks/useAuthRedirect";
import "../../globals.css";
import { Background } from "@/components/backgrounds";
import { Nav } from "@/components/nav";
import { Suspense } from "react";
import LoadingSpinner from "@/components/loading-spinner";

// Custom error fallback for ChunkLoadError
function ErrorFallback({
  error,
  resetErrorBoundary,
}: {
  error: Error;
  resetErrorBoundary: () => void;
}) {
  if (error.name === "ChunkLoadError") {
    return (
      <div className="p-4 text-center">
        <h2 className="text-xl font-bold text-red-600">Failed to Load Page</h2>
        <p className="text-gray-600">
          The page could not be loaded. Please check your internet connection
          and try again.
        </p>
        <button
          onClick={resetErrorBoundary}
          className="mt-4 px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600"
        >
          Retry
        </button>
      </div>
    );
  }

  return (
    <div className="p-4 text-center">
      <h2 className="text-xl font-bold text-red-600">Something went wrong</h2>
      <p className="text-gray-600">{error.message}</p>
      <button
        onClick={resetErrorBoundary}
        className="mt-4 px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600"
      >
        Try Again
      </button>
    </div>
  );
}

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
      <ErrorBoundary FallbackComponent={ErrorFallback}>
        <Suspense fallback={<LoadingSpinner />}>{children}</Suspense>
      </ErrorBoundary>
      <Background />
    </div>
  );
}
