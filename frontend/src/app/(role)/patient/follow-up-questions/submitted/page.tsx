"use client";
import React from "react";
import { PageHeader } from "@/components/page-header";
import PrivateRoute from "@/context/PrivateRoute";
import { AuthProvider } from "@/context/AuthProvider";
import { DataTable } from "./data-table/data-table";

const Home = () => {
  // API Endpoint

  return (
    <AuthProvider>
      <PrivateRoute requiredRole="patient">
        <div>
          <div className="container mx-auto py-10 pl-3">
            <PageHeader title="Answered Follow up Questions" description="" />
          </div>

          <div className="flex flex-col gap-4 p-4">
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
