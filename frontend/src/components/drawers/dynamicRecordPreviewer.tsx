// Modify this Component to handle any json file to preview, it just accepts route path and id
"use client";

import { useEffect, useState } from "react";
import useMediaQuery from "@/hooks/use-media-query";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { ScrollArea } from "@/components/ui/scroll-area";
import { Separator } from "@/components/ui/separator";
import { AlertCircle } from "lucide-react";
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
      }
    };

    fetchPatientRecord();
  }, [diagnosis_id]);

  const PatientRecordContent = () => (
    <ScrollArea className="h-[60vh] pr-4">
      {error ? (
        <Card className="w-full">
          <CardContent className="pt-6">
            <div className="flex items-center space-x-2 text-red-600">
              <AlertCircle className="h-5 w-5" />
              <p>{error}</p>
            </div>
          </CardContent>
        </Card>
      ) : !patientData ? (
        <Card className="w-full">
          <CardContent className="pt-6">
            <p>Loading patient record...</p>
          </CardContent>
        </Card>
      ) : (
        <div className="space-y-4">
          {Object.entries(patientData).map(([key, value]) => (
            <div key={key}>
              <div className="flex justify-between items-center">
                <span className="text-sm font-medium text-gray-500">
                  {key.replace(/_/g, " ")}
                </span>
                <span className="text-sm text-gray-900">{value}</span>
              </div>
              <Separator className="mt-2" />
            </div>
          ))}
        </div>
      )}
    </ScrollArea>
  );

  if (isDesktop) {
    return (
      <Dialog open={open} onOpenChange={setOpen}>
        <DialogTrigger asChild>
          <Button variant="outline">View Patient Record</Button>
        </DialogTrigger>
        <DialogContent className="sm:max-w-[425px]">
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
          <PatientRecordContent />
        </DialogContent>
      </Dialog>
    );
  }

  return (
    <Drawer open={open} onOpenChange={setOpen}>
      <DrawerTrigger asChild>
        <Button variant="outline">View Patient Record</Button>
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
        <PatientRecordContent />
        <DrawerFooter className="pt-2">
          <DrawerClose asChild>
            <Button variant="outline">Close</Button>
          </DrawerClose>
        </DrawerFooter>
      </DrawerContent>
    </Drawer>
  );
}
