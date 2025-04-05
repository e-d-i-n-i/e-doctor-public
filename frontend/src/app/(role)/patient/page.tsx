"use client";
import React from "react";
import { PageHeader } from "@/components/page-header";
import { PieChartWithLabel } from "@/components/charts/PieChartWithLabel";
import { RadialChartStacked_PatientCountByGender } from "@/components/insights/RadialChartPatientCountByGender";
import { LineChartLabel } from "@/components/charts/LineChartLabel";
import PrivateRoute from "@/context/PrivateRoute";
import { AuthProvider } from "@/context/AuthProvider";

const Home = () => {
  // API Endpoint
  const PATIENT_COUNT_BY_GENDER_ENDPOINT = `${process.env.NEXT_PUBLIC_API_BASE_URL}${process.env.NEXT_PUBLIC_PATIENT_COUNT_BY_GENDER_ENDPOINT}`;

  return (
    <AuthProvider>
      <PrivateRoute requiredRole="patient">
        <div>
          <div className="container mx-auto py-10 pl-3">
            <PageHeader
              title="Overview Dashboard"
              description="Discover how our innovative solutions can transform your business. We offer cutting-edge technology combined with expert support to help you achieve your goals."
            />
          </div>

          <div className="flex flex-col gap-4 p-4">
            <div className="grid auto-rows-min gap-4 grid-cols-1 md:grid-cols-3 sm:grid-cols-2">
              <div className="aspect-video rounded-xl bg-muted/50">
                <RadialChartStacked_PatientCountByGender
                  apiEndpoint={PATIENT_COUNT_BY_GENDER_ENDPOINT}
                />
              </div>
              <div className="aspect-video rounded-xl bg-muted/50">
                <PieChartWithLabel />
              </div>

              <div className="aspect-video rounded-xl bg-muted/50">
                <LineChartLabel />
              </div>
            </div>
          </div>
        </div>
      </PrivateRoute>
    </AuthProvider>
  );
};

export default Home;
