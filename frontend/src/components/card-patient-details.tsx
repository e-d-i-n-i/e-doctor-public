"use client";

import * as React from "react";
import Link from "next/link";
import {
  ChevronLeft,
  Loader2,
  MoreHorizontal,
  Pencil,
  Copy,
  UserRoundX,
  UserPen,
  KeySquare,
} from "lucide-react";
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
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { ResponsiveDialog } from "@/components/responsive-dialog";
import RemoveUserProfilePicture from "@/components/forms/RemovePatientProfile";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";

// Import specific edit forms
import EditUsernameForm from "@/components/forms/EditPatientUsernameForm";
import EditEmailForm from "@/components/forms/EditPatientEmailForm";
import EditPhoneNumberForm from "@/components/forms/EditPatientPhoneNumber";
import EditGenderForm from "@/components/forms/EditPatientGender";
import EditMaritalStatusForm from "@/components/forms/EditMaritalStatusForm";
import EditOccupationForm from "@/components/forms/EditOccupationForm";
import EditNationalityForm from "@/components/forms/EditNationalityForm";
import DeactivateUserForm from "@/components/forms/DeactivatePatientUser";
import ActivateUserForm from "@/components/forms/ActivatePatientUser";
import UpdateProfilePictureForm from "./forms/UpdatePatientProfile";
import EditFullNameForm from "./forms/EditPatientFullName";
import { FloatingRefreshButton } from "./card-org-user-refresh-button";
import ResetPasswordForm from "./forms/ResetPatientPassword";

// Interface for component props
interface CardDetailsProps {
  route: string; // API route to fetch data
  actions?: {
    label: string;
    href: string;
    variant:
      | "default"
      | "destructive"
      | "outline"
      | "secondary"
      | "ghost"
      | "link";
  }[]; // Optional actions (e.g., back button)
  backUrl?: string; // URL to navigate back to
}

// Interface for patient details data
interface DetailsData {
  id: string;
  first_name: string;
  last_name: string;
  date_of_birth: string;
  gender: string;
  phone_number: string;
  marital_status: string;
  occupation: string;
  nationality: string;
  email: string;
  profile_picture: string | null; // Base64 encoded image
  is_active: boolean;
  username: string;
  user_is_active: boolean;
  created_at: string;
  last_login: string;
}

/**
 * CardDetails Component
 * Displays detailed information about a patient, including personal details.
 * Allows editing of patient information and profile picture.
 */
export function CardDetails({
  route,
  actions = [{ label: "Back", href: "/", variant: "outline" }],
  backUrl = "/",
}: CardDetailsProps) {
  // Fetch data using custom hook
  const { data, loading: isLoading, error, refetch } = useTableData(route);

  // State for managing dialogs and edit fields
  const [isEditOpen, setIsEditOpen] = React.useState(false);
  const [isEditProfileOpen, setIsEditProfileOpen] = React.useState(false);
  const [isEditFullNameOpen, setIsEditFullNameOpen] = React.useState(false);
  const [isEditPwdOpen, setIsEditPwdOpen] = React.useState(false);
  const [isDeleteOpen, setIsDeleteOpen] = React.useState(false);
  const [editField, setEditField] = React.useState("");
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
    if (
      data && Array.isArray(data)
        ? data[0]?.profile_picture
        : data?.profile_picture
    ) {
      const detailsData = Array.isArray(data) ? data[0] : data;
      const imageUrl = `data:image/jpeg;base64,${detailsData.profile_picture}`;
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

  // Organize patient details into a structured object
  const orderedData: DetailsData = {
    id: detailsData.id,
    first_name: detailsData.first_name,
    last_name: detailsData.last_name,
    date_of_birth: detailsData.date_of_birth,
    gender: detailsData.gender,
    phone_number: detailsData.phone_number,
    marital_status: detailsData.marital_status,
    occupation: detailsData.occupation,
    nationality: detailsData.nationality,
    email: detailsData.email,
    profile_picture: detailsData.profile_picture,
    is_active: detailsData.user_is_active,
    username: detailsData.username,
    user_is_active: detailsData.user_is_active,
    created_at: detailsData.created_at,
    last_login: detailsData.last_login,
  };

  const fullName = `${orderedData.first_name} ${orderedData.last_name}`;

  // Personal information fields
  const personalInfo = [
    {
      key: "username",
      label: "Username",
      description: `Update the username for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditUsernameForm,
    },
    {
      key: "email",
      label: "Email",
      description: `Update the email address for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditEmailForm,
    },
    {
      key: "phone_number",
      label: "Phone Number",
      description: `Update the phone number for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditPhoneNumberForm,
    },
    {
      key: "gender",
      label: "Gender",
      description: `Update the gender for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditGenderForm,
    },
    {
      key: "date_of_birth",
      label: "Date of Birth",
      editable: false,
      actionable: false,
    },
    {
      key: "marital_status",
      label: "Marital Status",
      description: `Update the marital status for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditMaritalStatusForm,
    },
    {
      key: "occupation",
      label: "Occupation",
      description: `Update the occupation for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditOccupationForm,
    },
    {
      key: "nationality",
      label: "Nationality",
      description: `Update the nationality for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditNationalityForm,
    },
    {
      key: "is_active",
      label: "Active Status",
      description: orderedData.is_active
        ? `Are you sure you want to deactivate ${fullName}?`
        : `Are you sure you want to activate ${fullName}?`,
      editable: true,
      actionable: true,
      EditComponent: orderedData.is_active
        ? DeactivateUserForm
        : ActivateUserForm,
    },
    {
      key: "created_at",
      label: "Account Created",
      editable: false,
      actionable: false,
    },
    {
      key: "last_login",
      label: "Last Login",
      editable: false,
      actionable: false,
    },
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
              {infoArray.some((item) => item.actionable) && (
                <TableHead className="w-[100px]">Action</TableHead>
              )}
            </TableRow>
          </TableHeader>
          <TableBody>
            {infoArray.map(
              ({ key, label, editable, actionable, EditComponent }) => (
                <TableRow key={key}>
                  <TableCell className="font-medium">{label}</TableCell>
                  <TableCell>
                    {orderedData[key] === null || orderedData[key] === "" ? (
                      <span className="text-muted-foreground italic">
                        Not provided
                      </span>
                    ) : typeof orderedData[key] === "boolean" ? (
                      orderedData[key] ? (
                        "Yes"
                      ) : (
                        "No"
                      )
                    ) : (
                      String(orderedData[key])
                    )}
                  </TableCell>
                  {actionable && (
                    <TableCell>
                      <DropdownMenu>
                        <DropdownMenuTrigger asChild>
                          <Button variant="ghost" size="sm">
                            <MoreHorizontal className="h-4 w-4" />
                            <span className="sr-only">Open menu</span>
                          </Button>
                        </DropdownMenuTrigger>
                        <DropdownMenuContent align="end">
                          {editable && (
                            <DropdownMenuItem
                              onSelect={() => {
                                setEditField(key);
                                setIsEditOpen(true);
                              }}
                            >
                              <Pencil className="mr-2 h-4 w-4" />
                              Edit
                            </DropdownMenuItem>
                          )}
                          <DropdownMenuItem
                            onSelect={() =>
                              handleCopy(String(orderedData[key]))
                            }
                          >
                            <Copy className="mr-2 h-4 w-4" />
                            Copy
                          </DropdownMenuItem>
                        </DropdownMenuContent>
                      </DropdownMenu>
                    </TableCell>
                  )}
                </TableRow>
              )
            )}
          </TableBody>
        </Table>
      </CardContent>
    </Card>
  );

  // Find the appropriate edit component based on the selected field
  const EditComponent = personalInfo.find(
    (item) => item.key === editField
  )?.EditComponent;

  // Get the description for the edit dialog
  const editDescription = personalInfo.find(
    (item) => item.key === editField
  )?.description;

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

            <DropdownMenu>
              <DropdownMenuTrigger asChild>
                <Button variant="ghost" size="icon" className="h-8 w-8">
                  <MoreHorizontal className="h-4 w-4" />
                  <span className="sr-only">More options</span>
                </Button>
              </DropdownMenuTrigger>
              <DropdownMenuContent align="end" className="w-[160px]">
                <DropdownMenuItem onSelect={() => setIsEditFullNameOpen(true)}>
                  <Pencil className="mr-2 h-4 w-4" />
                  Edit Name
                </DropdownMenuItem>
                <DropdownMenuSeparator />
                <DropdownMenuItem onSelect={() => setIsEditPwdOpen(true)}>
                  <KeySquare className="mr-2 h-4 w-4" />
                  Reset Password
                </DropdownMenuItem>
                <DropdownMenuSeparator />
                <DropdownMenuItem onSelect={() => setIsEditProfileOpen(true)}>
                  <UserPen className="mr-2 h-4 w-4" />
                  Change Profile Picture
                </DropdownMenuItem>
                <DropdownMenuSeparator />
                <DropdownMenuItem
                  onSelect={() => setIsDeleteOpen(true)}
                  className="text-red-600"
                >
                  <UserRoundX className="mr-2 h-4 w-4" />
                  Remove Profile Picture
                </DropdownMenuItem>
              </DropdownMenuContent>
            </DropdownMenu>
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
              {orderedData.email && (
                <p className="text-muted-foreground">{orderedData.email}</p>
              )}
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Personal Information Table */}
      {renderInfoTable(personalInfo, "Personal Information")}

      {/* Edit Dialog */}
      {EditComponent && (
        <ResponsiveDialog
          isOpen={isEditOpen}
          setIsOpen={setIsEditOpen}
          title={`Edit ${
            editField
              ? personalInfo.find((i) => i.key === editField)?.label
              : "Patient"
          }`}
          description={editDescription}
        >
          <EditComponent
            userid={orderedData.id}
            setIsOpen={setIsEditOpen}
            fullname={fullName}
          />
        </ResponsiveDialog>
      )}

      {/* Remove Profile Picture Dialog */}
      <ResponsiveDialog
        isOpen={isDeleteOpen}
        setIsOpen={setIsDeleteOpen}
        title="Remove Profile Picture"
        description={`Are you sure you want to remove ${fullName}'s profile picture? This action cannot be undone.`}
      >
        <RemoveUserProfilePicture
          staff_id={orderedData.id}
          setIsOpen={setIsDeleteOpen}
        />
      </ResponsiveDialog>

      {/* Change Profile Picture Dialog */}
      <ResponsiveDialog
        isOpen={isEditProfileOpen}
        setIsOpen={setIsEditProfileOpen}
        title="Change Profile Picture"
        description={`Change ${fullName}'s profile picture.`}
      >
        <UpdateProfilePictureForm
          userid={orderedData.id}
          setIsOpen={setIsEditProfileOpen}
        />
      </ResponsiveDialog>

      {/* Edit Full Name Dialog */}
      <ResponsiveDialog
        isOpen={isEditFullNameOpen}
        setIsOpen={setIsEditFullNameOpen}
        title="Edit Full Name"
        description={`Edit ${fullName}'s full name.`}
      >
        <EditFullNameForm
          staff_id={orderedData.id}
          setIsOpen={setIsEditFullNameOpen}
        />
      </ResponsiveDialog>

      {/* Change Password Dialog */}
      <ResponsiveDialog
        isOpen={isEditPwdOpen}
        setIsOpen={setIsEditPwdOpen}
        title="Reset User Password"
        description={`Generate a strong password and submit to securely reset the ${fullName}'s password.`}
      >
        <ResetPasswordForm
          userid={orderedData.id}
          setIsOpen={setIsEditPwdOpen}
        />
      </ResponsiveDialog>

      {/* Floating Refresh Button */}
      <FloatingRefreshButton onRefresh={handleRefresh} />
    </div>
  );
}
