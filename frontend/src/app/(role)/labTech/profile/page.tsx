"use client";

import { useEffect, useState, useCallback, useMemo } from "react";
import { getToken, getUsername } from "@/hooks/auth";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Skeleton } from "@/components/ui/skeleton";
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";
import { AlertCircle, User, Briefcase } from "lucide-react";
import { fetchUserDetails } from "@/api/user";
import { AppUser, OrganizationStaff } from "@/types/User";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Table, TableBody, TableCell, TableRow } from "@/components/ui/table";
import { ChangePasswordForm } from "@/components/forms/updatePassword";
import { ChangeUsernameForm } from "@/components/forms/updateUsername";
import PrivateRoute from "@/context/PrivateRoute";
import { AuthProvider } from "@/context/AuthProvider";

const UserDetailsPage = () => {
  const [userDetails, setUserDetails] = useState<AppUser | null>(null);
  const [staffDetails, setStaffDetails] = useState<OrganizationStaff | null>(
    null
  );
  const [error, setError] = useState<string | null>(null);
  const [isLoading, setIsLoading] = useState(true);

  const loadUserDetails = useCallback(async () => {
    try {
      const token = getToken();
      if (!token) {
        throw new Error("No token found. Please log in.");
      }

      const username = getUsername();
      if (!username) {
        throw new Error("Invalid token structure: Missing username.");
      }

      const { user, staff } = await fetchUserDetails(username);
      setUserDetails(user);
      setStaffDetails(staff);
    } catch (err: any) {
      setError(err.message);
    } finally {
      setIsLoading(false);
    }
  }, []);

  useEffect(() => {
    loadUserDetails();
  }, [loadUserDetails]);

  if (isLoading) {
    return <LoadingSkeleton />;
  }

  if (error) {
    return <ErrorDisplay message={error} />;
  }

  return (
    <AuthProvider>
      <PrivateRoute requiredRole="labTech">
        <main className="flex-1 overflow-y-auto p-4 sm:mt-0 md:mt-20 md:p-6 lg:p-8">
          <div className="mx-auto max-w-4xl space-y-8">
            <Tabs defaultValue="account" className="w-full">
              <TabsList className="grid w-full grid-cols-2 mb-8">
                <TabsTrigger
                  value="account"
                  className="data-[state=active]:bg-blue-500 data-[state=active]:text-white"
                >
                  <User className="mr-2 h-4 w-4" />
                  Account
                </TabsTrigger>
                <TabsTrigger
                  value="staff"
                  className="data-[state=active]:bg-blue-500 data-[state=active]:text-white"
                >
                  <Briefcase className="mr-2 h-4 w-4" />
                  Personal Details
                </TabsTrigger>
              </TabsList>
              <TabsContent value="account">
                <UserInfoCard user={userDetails} />
              </TabsContent>
              <TabsContent value="staff">
                {staffDetails && <StaffInfoCard staff={staffDetails} />}
              </TabsContent>
            </Tabs>
          </div>
        </main>
      </PrivateRoute>{" "}
    </AuthProvider>
  );
};

const UserInfoCard = ({ user }: { user: AppUser | null }) => {
  if (!user) return null;

  const userDetails = useMemo(
    () => [
      { label: "ID", value: user.id },
      { label: "Username", value: user.username },
      { label: "Role", value: user.role },
      { label: "Active", value: user.is_active ? "Yes" : "No" },
      {
        label: "Last Login",
        value: user.last_login
          ? new Date(user.last_login).toLocaleString()
          : null,
      },
      {
        label: "Created At",
        value: user.created_at
          ? new Date(user.created_at).toLocaleString()
          : null,
      },
      {
        label: "Updated At",
        value: user.updated_at
          ? new Date(user.updated_at).toLocaleString()
          : null,
      },
    ],
    [user]
  );

  return (
    <Card className="overflow-hidden bg-white dark:bg-gray-800 shadow-lg rounded-2xl">
      <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2 bg-gray-50 dark:bg-gray-900 border-b dark:border-gray-700">
        <CardTitle className="text-xl font-semibold text-gray-900 dark:text-white">
          Account Information
        </CardTitle>
        <div className="flex gap-2">
          <ChangeUsernameForm />
          <ChangePasswordForm />
        </div>
      </CardHeader>
      <CardContent className="p-6">
        <Table>
          <TableBody>
            {userDetails.map(
              (detail, index) =>
                detail.value && (
                  <TableRow key={index}>
                    <TableCell className="font-medium text-gray-500 dark:text-gray-400">
                      {detail.label}
                    </TableCell>
                    <TableCell className="text-gray-900 dark:text-white">
                      {detail.value}
                    </TableCell>
                  </TableRow>
                )
            )}
          </TableBody>
        </Table>
      </CardContent>
    </Card>
  );
};

const StaffInfoCard = ({ staff }: { staff: OrganizationStaff }) => {
  const staffDetails = useMemo(
    () => [
      { label: "Department", value: staff.department },
      { label: "Email", value: staff.email },
      { label: "Phone", value: staff.phone_number },
      { label: "Employment Type", value: staff.employment_type },
      {
        label: "Date of Joining",
        value: staff.date_of_joining
          ? new Date(staff.date_of_joining).toLocaleDateString()
          : null,
      },
      { label: "Active", value: staff.is_active ? "Yes" : "No" },
      {
        label: "Salary",
        value: staff.salary ? `$${staff.salary.toLocaleString()}` : null,
      },
      { label: "Shift", value: staff.shift },
      { label: "Supervisor ID", value: staff.supervisor_id },
      { label: "Address", value: staff.address },
      {
        label: "Updated At",
        value: staff.updated_at
          ? new Date(staff.updated_at).toLocaleString()
          : null,
      },
    ],
    [staff]
  );

  return (
    <Card className="overflow-hidden bg-white dark:bg-gray-800 shadow-lg rounded-2xl">
      <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2 bg-gray-50 dark:bg-gray-900 border-b dark:border-gray-700">
        <CardTitle className="text-xl font-semibold text-gray-900 dark:text-white">
          Staff Information
        </CardTitle>
      </CardHeader>
      <CardContent className="p-6">
        <div className="flex items-center mb-6">
          <Avatar className="h-20 w-20 mr-4 ring-2 ring-blue-500">
            <AvatarImage
              src={staff.profile_picture}
              alt={`${staff.first_name} ${staff.last_name}`}
            />
            <AvatarFallback className="bg-blue-500 text-white">
              {staff.first_name[0]}
              {staff.last_name[0]}
            </AvatarFallback>
          </Avatar>
          <div>
            <h3 className="text-2xl font-semibold text-gray-900 dark:text-white">
              {staff.first_name} {staff.last_name}
            </h3>
            <p className="text-gray-500 dark:text-gray-400">{staff.role}</p>
          </div>
        </div>
        <Table>
          <TableBody>
            {staffDetails.map(
              (detail, index) =>
                detail.value && (
                  <TableRow key={index}>
                    <TableCell className="font-medium text-gray-500 dark:text-gray-400">
                      {detail.label}
                    </TableCell>
                    <TableCell className="text-gray-900 dark:text-white">
                      {detail.value}
                    </TableCell>
                  </TableRow>
                )
            )}
          </TableBody>
        </Table>
      </CardContent>
    </Card>
  );
};

const LoadingSkeleton = () => (
  <div className="container mx-auto p-4">
    <Skeleton className="h-10 w-1/4 mb-6" />
    <div className="grid md:grid-cols-2 gap-6">
      {[...Array(2)].map((_, i) => (
        <Card key={i}>
          <CardHeader>
            <Skeleton className="h-6 w-1/3" />
          </CardHeader>
          <CardContent>
            <div className="space-y-2">
              {[...Array(6)].map((_, j) => (
                <Skeleton key={j} className="h-4 w-full" />
              ))}
            </div>
          </CardContent>
        </Card>
      ))}
    </div>
  </div>
);

const ErrorDisplay = ({ message }: { message: string }) => (
  <div className="container mx-auto p-4">
    <Alert variant="destructive">
      <AlertCircle className="h-4 w-4" />
      <AlertTitle>Error</AlertTitle>
      <AlertDescription>{message}</AlertDescription>
    </Alert>
  </div>
);

export default UserDetailsPage;
