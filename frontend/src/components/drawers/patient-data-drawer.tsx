"use client";

import { useEffect, useState } from "react";
import useMediaQuery from "@/hooks/use-media-query";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
  CardDescription,
} from "@/components/ui/card";
import { ScrollArea } from "@/components/ui/scroll-area";
import { Separator } from "@/components/ui/separator";
import { AlertCircle, FileChartPie, Loader2 } from "lucide-react";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import {
  Drawer,
  DrawerClose,
  DrawerContent,
  DrawerDescription,
  DrawerFooter,
  DrawerHeader,
  DrawerTitle,
  DrawerTrigger,
} from "@/components/ui/drawer";

interface PatientData {
  [key: string]: string | number;
}

interface PatientRecordProps {
  diagnosis_id: string;
}

export default function PatientRecordDrawer({
  diagnosis_id,
}: PatientRecordProps) {
  const [open, setOpen] = useState(false);
  const [patientData, setPatientData] = useState<PatientData | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const isDesktop = useMediaQuery("(min-width: 768px)");

  useEffect(() => {
    const fetchPatientRecord = async () => {
      try {
        const response = await fetch(
          `http://127.0.0.1:5000/api/diagnosis/${diagnosis_id}/patient_record`
        );
        const result = await response.json();

        if (response.ok) {
          setPatientData(result.data[0]);
        } else {
          setError(
            result.message ||
              "An error occurred while fetching patient records."
          );
        }
      } catch {
        setError("An error occurred while fetching patient records.");
      } finally {
        setLoading(false);
      }
    };

    fetchPatientRecord();
  }, [diagnosis_id]);

  const PatientRecordContent = () => (
    <ScrollArea className="h-[70vh] pr-4">
      {error ? (
        <Card className="w-full">
          <CardContent className="pt-6">
            <div className="flex items-center space-x-2 text-red-600">
              <AlertCircle className="h-5 w-5" />
              <p>{error}</p>
            </div>
          </CardContent>
        </Card>
      ) : loading ? (
        <Card className="w-full">
          <CardContent className="pt-6 flex justify-center">
            <Loader2 className="h-6 w-6 animate-spin" />
          </CardContent>
        </Card>
      ) : (
        <div className="space-y-6">
          {/* Vital Signs Card */}
          <Card>
            <CardHeader>
              <CardTitle>Vital Signs</CardTitle>
              <CardDescription>Current patient vitals</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div className="flex flex-col space-y-2">
                  <span className="text-sm text-muted-foreground">
                    Heart Rate
                  </span>
                  <span className="text-lg font-semibold">
                    {patientData?.heart_rate} bpm
                  </span>
                </div>
                <div className="flex flex-col space-y-2">
                  <span className="text-sm text-muted-foreground">
                    Blood Pressure
                  </span>
                  <span className="text-lg font-semibold">
                    {patientData?.blood_pressure}
                  </span>
                </div>
                <div className="flex flex-col space-y-2">
                  <span className="text-sm text-muted-foreground">
                    Temperature
                  </span>
                  <span className="text-lg font-semibold">
                    {patientData?.body_temp_deg_c}°C
                  </span>
                </div>
              </div>
            </CardContent>
          </Card>

          {/* Personal Information Card */}
          <Card>
            <CardHeader>
              <CardTitle>Personal Information</CardTitle>
              <CardDescription>Patient demographics</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid gap-4">
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">Age</span>
                  <span className="text-sm font-medium">
                    {patientData?.age} years
                  </span>
                </div>
                <Separator />
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">Gender</span>
                  <span className="text-sm font-medium">
                    {patientData?.gender}
                  </span>
                </div>
                <Separator />
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">
                    Nationality
                  </span>
                  <span className="text-sm font-medium">
                    {patientData?.nationality}
                  </span>
                </div>
                <Separator />
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">
                    Occupation
                  </span>
                  <span className="text-sm font-medium">
                    {patientData?.occupation}
                  </span>
                </div>
              </div>
            </CardContent>
          </Card>

          {/* Lifestyle Information Card */}
          <Card>
            <CardHeader>
              <CardTitle>Lifestyle Information</CardTitle>
              <CardDescription>Patient habits and medications</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid gap-4">
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">
                    Alcohol Consumption
                  </span>
                  <span className="text-sm font-medium">
                    {patientData?.alcohol_consumption}
                  </span>
                </div>
                <Separator />
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">
                    Caffeine Consumption
                  </span>
                  <span className="text-sm font-medium">
                    {patientData?.caffeine_consumption}
                  </span>
                </div>
                <Separator />
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">
                    Tobacco Use
                  </span>
                  <span className="text-sm font-medium">
                    {patientData?.tobacco_use}
                  </span>
                </div>
                <Separator />
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">
                    Ongoing Medications
                  </span>
                  <span className="text-sm font-medium">
                    {patientData?.ongoing_medications}
                  </span>
                </div>
              </div>
            </CardContent>
          </Card>

          {/* Medical Information Card */}
          <Card>
            <CardHeader>
              <CardTitle>Medical Information</CardTitle>
              <CardDescription>Patient medical history</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid gap-4">
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">
                    Chief Complaints
                  </span>
                  <span className="text-sm font-medium">
                    {patientData?.chief_complaints}
                  </span>
                </div>
                <Separator />
                <div className="flex justify-between">
                  <span className="text-sm text-muted-foreground">
                    Duration of Illness
                  </span>
                  <span className="text-sm font-medium">
                    {patientData?.duration_of_illness}
                  </span>
                </div>
              </div>
            </CardContent>
          </Card>
        </div>
      )}
    </ScrollArea>
  );

  const ContentWrapper = ({ children }: { children: React.ReactNode }) => (
    <div className="w-full max-w-4xl mx-auto">{children}</div>
  );

  if (isDesktop) {
    return (
      <Dialog open={open} onOpenChange={setOpen}>
        <DialogTrigger asChild>
          <Button className="bg-orange-600">
            <FileChartPie />
            View Patient Records
          </Button>
        </DialogTrigger>
        <DialogContent className="max-w-4xl">
          <DialogHeader>
            <DialogTitle>
              {patientData?.Patient || "Patient Record"}
            </DialogTitle>
            <DialogDescription>
              {patientData
                ? `${patientData.age} years old • ${patientData.gender} • ${patientData.nationality}`
                : "Loading patient information..."}
            </DialogDescription>
          </DialogHeader>
          <ContentWrapper>
            <PatientRecordContent />
          </ContentWrapper>
        </DialogContent>
      </Dialog>
    );
  }

  return (
    <Drawer open={open} onOpenChange={setOpen}>
      <DrawerTrigger asChild>
        <Button className="bg-orange-600">
          <FileChartPie />
          View Patient Records
        </Button>
      </DrawerTrigger>
      <DrawerContent>
        <DrawerHeader className="text-left">
          <DrawerTitle>{patientData?.Patient || "Patient Record"}</DrawerTitle>
          <DrawerDescription>
            {patientData
              ? `${patientData.age} years old • ${patientData.gender} • ${patientData.nationality}`
              : "Loading patient information..."}
          </DrawerDescription>
        </DrawerHeader>
        <ContentWrapper>
          <PatientRecordContent />
        </ContentWrapper>
        <DrawerFooter className="pt-2">
          <DrawerClose asChild>
            <Button variant="outline">Close</Button>
          </DrawerClose>
        </DrawerFooter>
      </DrawerContent>
    </Drawer>
  );
}
