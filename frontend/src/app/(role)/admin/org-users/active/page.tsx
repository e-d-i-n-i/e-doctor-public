"use client";
import React from "react";
import { PageHeader } from "@/components/page-header";
import { PieChartWithLabel } from "@/components/charts/PieChartWithLabel";
import { RadialChartStacked_PatientCountByGender } from "@/components/insights/RadialChartPatientCountByGender";
import PrivateRoute from "@/context/PrivateRoute";
import { AuthProvider } from "@/context/AuthProvider";
import { PieChartPatientCountByGender } from "@/components/insights/PieChartPatientCountByGender";
import { DataTable } from "./data-table/data-table";
import { Button } from "@/components/ui/button";
import Link from "next/link";
import { Plus } from "lucide-react";

const Home = () => {
  // API Endpoint
  const PATIENT_COUNT_BY_GENDER_ENDPOINT = `${process.env.NEXT_PUBLIC_API_BASE_URL}${process.env.NEXT_PUBLIC_PATIENT_COUNT_BY_GENDER_ENDPOINT}`;

  return (
    <AuthProvider>
      <PrivateRoute requiredRole="admin">
        <div>
          <div className="container mx-auto py-10 pl-3">
            <PageHeader
              title="Active Organization Users"
              description="This page displays active organization users in a detailed table. You can search for specific users and perform various actions to manage them efficiently."
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
                <PieChartPatientCountByGender
                  apiEndpoint={PATIENT_COUNT_BY_GENDER_ENDPOINT}
                />
              </div>
            </div>
            <div className="flex w-full flex-col items-start justify-between rounded-md border px-4 py-3 sm:flex-row sm:items-center gap-3">
              <p className="text-sm font-medium leading-none">
                <span className="mr-2 rounded-lg bg-primary px-2 py-1 text-xs text-primary-foreground">
                  CTA
                </span>
                <span className="text-muted-foreground">
                  What would you like to do?
                </span>
              </p>
              <div className="flex flex-wrap gap-2">
                <Button asChild>
                  <Link href="/admin/org-users/new">
                    <Plus className="mr-2 h-4 w-4" /> Add New Organization User
                  </Link>
                </Button>
                {/* Additional buttons can be added here */}
              </div>
            </div>

            <div className="flex-1 rounded-xl bg-muted/50 p-3">
              <DataTable />
            </div>
          </div>
        </div>
      </PrivateRoute>
    </AuthProvider>
  );
};

export default Home;
