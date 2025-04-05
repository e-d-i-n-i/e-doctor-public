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
import { AddLaboratoryReportForm } from "./forms/SubmitLabReport";

// Interface for component props
interface CardDetailsProps {
  route: string; // API route to fetch data
  backUrl?: string; // URL to navigate back to
}

/**
 * CardDetails Component
 * Displays detailed information about a laboratory test request.
 * Allows copying of field values to the clipboard.
 */
export function CardDetails({ route, backUrl = "/" }: CardDetailsProps) {
  // Fetch data using custom hook
  const { data, loading: isLoading, error, refetch } = useTableData(route);

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

  const detailsData = Array.isArray(data) ? data[0] : data;

  // No data found state
  if (!detailsData) {
    return (
      <Card className="w-full max-w-2xl mx-auto">
        <CardHeader>
          <CardTitle>No Data Found</CardTitle>
          <CardDescription>
            The requested record could not be found.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <p className="text-muted-foreground">
            The record you&apos;re looking for might have been deleted or
            doesn&apos;t exist.
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

  // Organize test request details into a structured object
  const orderedData = {
    id: detailsData.id,
    diagnosis_id: detailsData.diagnosis_id,
    test_type: detailsData.test_type,
    test_details: detailsData.test_details,
    priority_level: detailsData.priority_level,
    status: detailsData.status,
    requested_at: detailsData.requested_at,
    completed_at: detailsData.completed_at,
    comments: detailsData.comments,
    updated_at: detailsData.updated_at,
  };

  // Test request information fields
  const testRequestInfo = [
    { key: "test_type", label: "Test Type" },
    { key: "priority_level", label: "Priority Level" },
    { key: "status", label: "Status" },
    { key: "requested_at", label: "Requested At" },
    { key: "completed_at", label: "Completed At" },
    { key: "comments", label: "Comments" },
  ];

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
  const renderInfoTable = (infoArray, title) => (
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
                  {orderedData[key] === null || orderedData[key] === "" ? (
                    <span className="text-muted-foreground italic">
                      Not provided
                    </span>
                  ) : (
                    String(orderedData[key])
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
                        onSelect={() => handleCopy(String(orderedData[key]))}
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

  return (
    <div className="w-full max-w-4xl mx-auto space-y-6">
      {/* Test Request Section */}
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
            <div className="text-center">
              <h2 className="text-2xl font-semibold">
                Laboratory Test Request
              </h2>
              <p className="text-muted-foreground">ID: {orderedData.id}</p>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Test Request Information Table */}
      {renderInfoTable(testRequestInfo, "Test Request Information")}

      {/* Floating Refresh Button */}
      <FloatingRefreshButton onRefresh={handleRefresh} />
      {/* Conditionally render the AddLaboratoryReportForm */}
      {orderedData.status !== "Completed" && (
        <div>
          {/* Pass the patient_id to the form */}
          <AddLaboratoryReportForm
            test_type={orderedData.test_type}
            test_details={orderedData.test_details}
            test_request_id={orderedData.id}
            initial_comments={orderedData.comments}
          />
        </div>
      )}
    </div>
  );
}
