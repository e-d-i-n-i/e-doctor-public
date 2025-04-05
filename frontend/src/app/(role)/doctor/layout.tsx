import type { Metadata } from "next";
import { SidebarInset, SidebarProvider } from "@/components/ui/sidebar";
import "@/app/globals.css";
import { AuthProvider } from "@/context/AuthProvider";
import { Header } from "@/components/navigation/header";
import { DoctorSidebar } from "@/components/side-bars/doctor-sidebar";

export const metadata: Metadata = {
  title: "The eDoctor Project",
  description:
    "AI-powered expert system for medical prescriptions based on patient diagnostics and history",
};

export default function DoctorLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <SidebarProvider>
      <AuthProvider>
        <DoctorSidebar />
        <SidebarInset className="overflow-x-hidden">
          <div className="flex flex-col h-screen">
            <div className="sticky top-0 z-10 bg-background shadow-md">
              <Header />
            </div>
            <div className="flex-1 overflow-auto">{children}</div>
          </div>
        </SidebarInset>
      </AuthProvider>
    </SidebarProvider>
  );
}
