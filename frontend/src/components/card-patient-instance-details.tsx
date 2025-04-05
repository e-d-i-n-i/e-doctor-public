"use client";

import * as React from "react";
import Link from "next/link";
import { ChevronLeft, Loader2, MoreHorizontal, Copy } from "lucide-react";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { useTableData } from "@/hooks/use-table-data";
import { toast } from "sonner";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { getInitials } from "@/lib/utils";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { FloatingRefreshButton } from "./card-org-user-refresh-button";

// Interface for component props
interface CardDetailsProps {
  route: string; // API route to fetch data
  backUrl?: string; // URL to navigate back to
}

// Interface for patient context data
interface PatientContext {
  patient_id: string;
  first_name: string;
  last_name: string;
  date_of_birth: string;
  gender: "Male" | "Female";
  phone_number: string;
  marital_status: string;
  occupation: string | null;
  nationality: string;
  email: string | null;
  profile_picture: string | null;
  is_active: boolean;

  // Patient Instance Details
  instance_id: string;
  chief_complaints: string | null;
  symptoms: string | null;
  symptom_details: object | null;
  pain_details: object | null;
  duration_of_illness: string | null;
  remedies_tried: string | null;
  vitals: object | null;
  weight: number;
  height: number;
  age: number;
  ongoing_medications: string | null;
  lifestyle_factors: object | null;
  allergies_and_alerts: string | null;
  nurses_notes: string | null;
  instance_summary: string | null;

  // Patient Diagnosis Details
  diagnosis_id: string;
  doctor_id: string | null;
  diagnosis_code: string | null;
  diagnosis_date: string;
  status: "active" | "completed";
  notes: string | null;
  created_at: string;
  updated_at: string;
  final_diagnosis: string | null;
}

/**
 * CardDetails Component
 * Displays detailed information about a patient's context.
 * Allows copying of patient information.
 */
export function CardDetails({ route, backUrl = "/" }: CardDetailsProps) {
  // Fetch data using custom hook
  const { data, loading: isLoading, error, refetch } = useTableData(route);

  // State for managing profile image URL
  const [profileImageUrl, setProfileImageUrl] = React.useState<string | null>(
    null
  );

  // Handle refresh action
  const handleRefresh = () => {
    refetch();
  };

  // Show error toast if data fetching fails
  React.useEffect(() => {
    if (error) {
      toast.error("Failed to load details. Please try again later.");
    }
  }, [error]);

  // Set profile image URL if profile picture exists
  React.useEffect(() => {
    if (Array.isArray(data) && data[0]?.profile_picture) {
      const imageUrl = `data:image/jpeg;base64,${data[0].profile_picture}`;
      setProfileImageUrl(imageUrl);

      return () => {
        URL.revokeObjectURL(imageUrl); // Clean up URL
      };
    }
  }, [data]);

  // Loading state
  if (isLoading) {
    return (
      <Card className="w-full max-w-2xl mx-auto">
        <CardContent className="flex items-center justify-center h-64">
          <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
        </CardContent>
      </Card>
    );
  }

  // Error state
  if (error || !data) {
    return (
      <Card className="w-full max-w-2xl mx-auto">
        <CardHeader>
          <CardTitle className="text-destructive">
            Error Loading Details
          </CardTitle>
          <CardDescription>
            We encountered an error while loading the details.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <p className="text-muted-foreground">
            Please try again later or contact support if the problem persists.
          </p>
        </CardContent>
        <CardFooter>
          <Button asChild variant="outline" className="w-full">
            <Link href={backUrl}>
              <ChevronLeft className="mr-2 h-4 w-4" />
              Go Back
            </Link>
          </Button>
        </CardFooter>
      </Card>
    );
  }

  // Ensure data is an array and extract the first item
  const patientContext: PatientContext = Array.isArray(data) ? data[0] : data;

  const fullName = `${patientContext.first_name} ${patientContext.last_name}`;

  // Handle copying text to clipboard
  const handleCopy = (text: string) => {
    navigator.clipboard.writeText(text);
    toast.success("Copied to clipboard");
  };

  /**
   * Render a table for displaying information fields
   * @param infoArray - Array of fields to display
   * @param title - Title of the table
   */
  const renderInfoTable = (
    infoArray: { key: string; label: string }[],
    title: string
  ) => (
    <Card className="mt-6">
      <CardHeader>
        <CardTitle>{title}</CardTitle>
      </CardHeader>
      <CardContent>
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead className="w-[200px]">Field</TableHead>
              <TableHead>Value</TableHead>
              <TableHead className="w-[100px]">Action</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {infoArray.map(({ key, label }) => (
              <TableRow key={key}>
                <TableCell className="font-medium">{label}</TableCell>
                <TableCell>
                  {patientContext[key] === null ||
                  patientContext[key] === "" ? (
                    <span className="text-muted-foreground italic">
                      Not provided
                    </span>
                  ) : typeof patientContext[key] === "boolean" ? (
                    patientContext[key] ? (
                      "Yes"
                    ) : (
                      "No"
                    )
                  ) : (
                    String(patientContext[key])
                  )}
                </TableCell>
                <TableCell>
                  <DropdownMenu>
                    <DropdownMenuTrigger asChild>
                      <Button variant="ghost" size="sm">
                        <MoreHorizontal className="h-4 w-4" />
                        <span className="sr-only">Open menu</span>
                      </Button>
                    </DropdownMenuTrigger>
                    <DropdownMenuContent align="end">
                      <DropdownMenuItem
                        onSelect={() => handleCopy(String(patientContext[key]))}
                      >
                        <Copy className="mr-2 h-4 w-4" />
                        Copy
                      </DropdownMenuItem>
                    </DropdownMenuContent>
                  </DropdownMenu>
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </CardContent>
    </Card>
  );

  // Personal information fields
  const personalInfo = [
    { key: "first_name", label: "First Name" },
    { key: "last_name", label: "Last Name" },
    { key: "date_of_birth", label: "Date of Birth" },
    { key: "gender", label: "Gender" },
    { key: "phone_number", label: "Phone Number" },
    { key: "marital_status", label: "Marital Status" },
    { key: "occupation", label: "Occupation" },
    { key: "nationality", label: "Nationality" },
    { key: "email", label: "Email" },
    { key: "is_active", label: "Active Status" },
  ];

  // Patient instance details fields
  const instanceInfo = [
    { key: "chief_complaints", label: "Chief Complaints" },
    { key: "symptoms", label: "Symptoms" },
    { key: "symptom_details", label: "Symptom Details" },
    { key: "pain_details", label: "Pain Details" },
    { key: "duration_of_illness", label: "Duration of Illness" },
    { key: "remedies_tried", label: "Remedies Tried" },
    { key: "vitals", label: "Vitals" },
    { key: "weight", label: "Weight" },
    { key: "height", label: "Height" },
    { key: "age", label: "Age" },
    { key: "ongoing_medications", label: "Ongoing Medications" },
    { key: "lifestyle_factors", label: "Lifestyle Factors" },
    { key: "allergies_and_alerts", label: "Allergies and Alerts" },
    { key: "nurses_notes", label: "Nurses Notes" },
    { key: "instance_summary", label: "Instance Summary" },
  ];

  // Diagnosis details fields
  const diagnosisInfo = [
    { key: "diagnosis_id", label: "Diagnosis ID" },
    { key: "doctor_id", label: "Doctor ID" },
    { key: "diagnosis_code", label: "Diagnosis Code" },
    { key: "diagnosis_date", label: "Diagnosis Date" },
    { key: "status", label: "Status" },
    { key: "notes", label: "Notes" },
    { key: "created_at", label: "Created At" },
    { key: "updated_at", label: "Updated At" },
    { key: "final_diagnosis", label: "Final Diagnosis" },
  ];

  return (
    <div className="w-full max-w-4xl mx-auto space-y-6">
      {/* Profile Section */}
      <Card className="overflow-hidden">
        <CardHeader className="pb-0">
          <div className="flex items-center justify-between">
            <Button variant="ghost" className="p-0 h-auto font-normal" asChild>
              <Link href={backUrl}>
                <ChevronLeft className="mr-2 h-4 w-4" />
                Back
              </Link>
            </Button>
          </div>
        </CardHeader>
        <CardContent className="pt-6">
          <div className="flex flex-col items-center space-y-4">
            <Avatar className="h-24 w-24">
              {profileImageUrl ? (
                <AvatarImage src={profileImageUrl} alt={fullName} />
              ) : (
                <AvatarFallback>{getInitials(fullName)}</AvatarFallback>
              )}
            </Avatar>
            <div className="text-center">
              <h2 className="text-2xl font-semibold">{fullName}</h2>
              {patientContext.email && (
                <p className="text-muted-foreground">{patientContext.email}</p>
              )}
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Personal Information Table */}
      {renderInfoTable(personalInfo, "Personal Information")}

      {/* Patient Instance Details Table */}
      {renderInfoTable(instanceInfo, "Patient Instance Details")}

      {/* Diagnosis Details Table */}
      {renderInfoTable(diagnosisInfo, "Diagnosis Details")}

      {/* Floating Refresh Button */}
      <FloatingRefreshButton onRefresh={handleRefresh} />
    </div>
  );
}
