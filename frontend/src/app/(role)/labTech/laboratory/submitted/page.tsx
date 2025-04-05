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
      <PrivateRoute requiredRole="labTech">
        <div>
          <div className="container mx-auto py-10 pl-3">
            <PageHeader
              title="Submitted Laboratory Requests"
              description="This page displays submitted laboratory requests in a detailed table. You can search for specific requests and perform various actions to manage them efficiently."
            />
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
