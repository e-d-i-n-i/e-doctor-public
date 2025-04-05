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
      <PrivateRoute requiredRole="labTech">
        <div className="flex flex-col md:mt-4 sm:mt-0">
          <div className="flex-1">
            <div className="container mx-auto py-10 pl-3">
              <PageHeader
                title="Activate Patient - New Instance"
                description="Please enter the user details in the provided fields. Once you have
          completed all the necessary information, click the submit button to
          finalize and proceed."
              />
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
