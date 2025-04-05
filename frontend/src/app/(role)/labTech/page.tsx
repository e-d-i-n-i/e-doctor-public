"use client";
import React from "react";
import { PageHeader } from "@/components/page-header";
import PrivateRoute from "@/context/PrivateRoute";
import { AuthProvider } from "@/context/AuthProvider";
import { RadialChartStacked_TestRequestsByPriority } from "@/components/insights/radial/Insight_GetTestRequestsByPriority";
import { RadialChartStacked_TestRequestsByStatus } from "@/components/insights/radial/Insight_GetTestRequestsByStatus";
const Home = () => {
  // API Endpoint
  const TEST_REQUESTS_BY_PRIORITY_ENDPOINT = `${process.env.NEXT_PUBLIC_API_BASE_URL}${process.env.NEXT_PUBLIC_TEST_REQUESTS_BY_PRIORITY_ENDPOINT}`;
  const TEST_REQUESTS_BY_STATUS_ENDPOINT = `${process.env.NEXT_PUBLIC_API_BASE_URL}${process.env.NEXT_PUBLIC_TEST_REQUESTS_BY_STATUS_ENDPOINT}`;
  return (
    <AuthProvider>
      <PrivateRoute requiredRole="labTech">
        <div>
          <div className="container mx-auto py-10 pl-3">
            <PageHeader
              title="Overview Dashboard"
              description="This page displays analytical charts and insights based on laboratory data stored in the database."
            />
          </div>

          <div className="flex flex-col gap-4 p-4">
            <div className="grid auto-rows-min gap-4 grid-cols-1 md:grid-cols-3 sm:grid-cols-2">
              <div className="aspect-video rounded-xl bg-muted/50">
                <RadialChartStacked_TestRequestsByStatus
                  apiEndpoint={TEST_REQUESTS_BY_STATUS_ENDPOINT}
                />
              </div>
              <div className="aspect-video rounded-xl bg-muted/50">
                <RadialChartStacked_TestRequestsByPriority
                  apiEndpoint={TEST_REQUESTS_BY_PRIORITY_ENDPOINT}
                />
              </div>
            </div>
          </div>
        </div>
      </PrivateRoute>
    </AuthProvider>
  );
};

export default Home;
