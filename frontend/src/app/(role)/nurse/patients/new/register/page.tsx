// src/app/page.tsx
"use client";
import { AddOrgUserForm } from "@/components/forms/AddOrgUserForm";
import { AddPatientUserForm } from "@/components/forms/AddPatientUserForm";
import { PageHeader } from "@/components/page-header";
import { AuthProvider } from "@/context/AuthProvider";
import PrivateRoute from "@/context/PrivateRoute";

const Home = () => {
  return (
    <AuthProvider>
      <PrivateRoute requiredRole="nurse">
        <div className="flex flex-col md:mt-4 sm:mt-0">
          <div className="flex-1">
            <div className="container mx-auto py-10 pl-3">
              <PageHeader
                title="Add New Patient"
                description="Please enter the user details in the provided fields. Once you have
          completed all the necessary information, click the submit button to
          finalize and proceed."
              />
            </div>
            <div>
              <AddPatientUserForm />
            </div>
          </div>
        </div>
      </PrivateRoute>
    </AuthProvider>
  );
};

export default Home;
