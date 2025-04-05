"use client";
import { useParams, notFound } from "next/navigation"; // Use next/navigation for Next.js
import { PageHeader } from "@/components/page-header";
import { AuthProvider } from "@/context/AuthProvider";
import PrivateRoute from "@/context/PrivateRoute";
import { CardDetails } from "@/components/card-lab-request-details";

const Home = () => {
  // Extract the patient_id from the URL
  const params = useParams<{ id: string }>();
  const patient_id = params?.id;

  // Handle missing patient_id
  if (!patient_id) {
    notFound(); // Redirect to the not found page
  }

  return (
    <AuthProvider>
      <PrivateRoute requiredRole="patient">
        <div className="flex flex-col md:mt-4 sm:mt-0">
          <div className="flex-1">
            <div className="container mx-auto py-10 pl-3">
              <PageHeader title="Answer Follow up Questions" description="" />
            </div>

            <div className="flex-1 mt-2">
              <CardDetails
                route={`api/GetLaboratoryTestRequestById/${patient_id}`}
                backUrl="/labTech/laboratory/active"
              />
            </div>
          </div>
        </div>
      </PrivateRoute>
    </AuthProvider>
  );
};

export default Home;
