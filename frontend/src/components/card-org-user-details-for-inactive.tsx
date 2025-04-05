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
import RemoveUserProfilePicture from "@/components/forms/RemoveUserProfilePicture";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";

// Import specific edit forms
import EditUsernameForm from "@/components/forms/EditUsernameForm";
import EditEmailForm from "@/components/forms/EditEmailForm";
import EditPhoneNumberForm from "@/components/forms/EditPhonNumberForm";
import EditGenderForm from "@/components/forms/EditGenderForm";
import EditAddressForm from "@/components/forms/EditAddressForm";
import EditEmergencyContactForm from "@/components/forms/EditEmergencyContactForm";
import EditDepartmentForm from "@/components/forms/EditDepartmentForm";
import EditRoleForm from "@/components/forms/EditRoleForm";
import EditEmploymentTypeForm from "@/components/forms/EditEmploymentTypeForm";
import EditSalaryForm from "@/components/forms/EditSalaryForm";
import EditShiftForm from "@/components/forms/EditShiftForm";
import DeactivateUserForm from "@/components/forms/DeactiveOrganizationUserById";
import ActivateUserForm from "@/components/forms/ActiveOrganizationUserById";
import UpdateProfilePictureForm from "./forms/UpdateProfilePicture";
import EditFullNameForm from "./forms/EditFullNameForm";
import { FloatingRefreshButton } from "./card-org-user-refresh-button";

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

// Interface for user details data
interface DetailsData {
  id: string;
  first_name: string;
  last_name: string;
  role: string;
  gender: string;
  department: string;
  email: string;
  phone_number: string;
  employment_type: string;
  date_of_joining: string;
  salary: string;
  shift: string;
  supervisor_id: string;
  address: string;
  emergency_contact: string;
  profile_picture: string | null; // Base64 encoded image
  username: string;
  user_is_active: boolean;
  created_at: string;
  last_login: string;
}

/**
 * CardDetails Component
 * Displays detailed information about a user, including personal and organizational details.
 * Allows editing of user information and profile picture.
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

  // Organize user details into a structured object
  const orderedData: DetailsData = {
    id: detailsData.id,
    first_name: detailsData.first_name,
    last_name: detailsData.last_name,
    role: detailsData.role,
    gender: detailsData.gender,
    department: detailsData.department,
    email: detailsData.email,
    phone_number: detailsData.phone_number,
    employment_type: detailsData.employment_type,
    date_of_joining: detailsData.date_of_joining,
    salary: detailsData.salary,
    shift: detailsData.shift,
    supervisor_id: detailsData.supervisor_id,
    address: detailsData.address,
    emergency_contact: detailsData.emergency_contact,
    profile_picture: detailsData.profile_picture,
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
      key: "address",
      label: "Address",
      description: `Update the address for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditAddressForm,
    },
    {
      key: "emergency_contact",
      label: "Emergency Contact",
      description: `Update the emergency contact for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditEmergencyContactForm,
    },
  ];

  // Organizational information fields
  const organizationalInfo = [
    {
      key: "department",
      label: "Department",
      description: `Update the department for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditDepartmentForm,
    },
    {
      key: "role",
      label: "Role",
      description: `Update the role for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditRoleForm,
    },
    {
      key: "employment_type",
      label: "Employment Type",
      description: `Update the employment type for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditEmploymentTypeForm,
    },
    {
      key: "salary",
      label: "Salary",
      description: `Update the salary for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditSalaryForm,
    },
    {
      key: "shift",
      label: "Shift",
      description: `Update the shift for ${fullName}.`,
      editable: true,
      actionable: true,
      EditComponent: EditShiftForm,
    },
    {
      key: "supervisor_id",
      label: "Supervisor ID",
      editable: false,
      actionable: false,
    },
    {
      key: "date_of_joining",
      label: "Date of Joining",
      editable: false,
      actionable: false,
    },
    {
      key: "user_is_active",
      label: "Active Status",
      description: orderedData.user_is_active
        ? `Are you sure you want to deactivate ${fullName}?`
        : `Are you sure you want to activate ${fullName}?`,
      editable: true,
      actionable: true,
      EditComponent: orderedData.user_is_active
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
  const EditComponent = [...personalInfo, ...organizationalInfo].find(
    (item) => item.key === editField
  )?.EditComponent;

  // Get the description for the edit dialog
  const editDescription = [...personalInfo, ...organizationalInfo].find(
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
              {orderedData.role && (
                <p className="text-muted-foreground">{orderedData.role}</p>
              )}
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Personal Information Table */}
      {renderInfoTable(personalInfo, "Personal Information")}

      {/* Organizational Information Table */}
      {renderInfoTable(organizationalInfo, "Organizational Information")}

      {/* Edit Dialog */}
      {EditComponent && (
        <ResponsiveDialog
          isOpen={isEditOpen}
          setIsOpen={setIsEditOpen}
          title={`Edit ${
            editField
              ? personalInfo.find((i) => i.key === editField)?.label ||
                organizationalInfo.find((i) => i.key === editField)?.label
              : "Person"
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

      {/* Floating Refresh Button */}
      <FloatingRefreshButton onRefresh={handleRefresh} />
    </div>
  );
}
