"use client"; // Mark the component as a client component

import { useParams, notFound } from "next/navigation"; // Use next/navigation for Next.js
import { CardDetails } from "@/components/card-patient-details";
import { PageHeader } from "@/components/page-header";
import { AuthProvider } from "@/context/AuthProvider";
import PrivateRoute from "@/context/PrivateRoute";

const PreviewPage = () => {
  // Extract the id from the URL
  const params = useParams<{ id: string }>();
  const id = params?.id;

  // Handle missing id
  if (!id) {
    notFound(); // Redirect to the not found page
  }

  return (
    <AuthProvider>
      <PrivateRoute requiredRole="nurse">
        <div className="flex flex-col h-screen">
          <div className="container mx-auto py-10 pl-3">
            <PageHeader
              title="Patient Details"
              description="This page displays detailed information about organization users, allowing you to edit any field to manage their details efficiently."
            />
          </div>

          <div className="flex-1 mt-2">
            <CardDetails
              route={`api/GetPatientById/${id}`}
              actions={[
                {
                  label: "Go Back",
                  href: `/nurse/patients/search`,
                  variant: "default",
                },
              ]}
              backUrl="/nurse/patients/search"
            />
          </div>
        </div>
      </PrivateRoute>
    </AuthProvider>
  );
};

export default PreviewPage;
