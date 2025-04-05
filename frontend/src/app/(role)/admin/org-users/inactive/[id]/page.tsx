import { notFound } from "next/navigation";
import { CardDetails } from "@/components/card-org-user-details-for-inactive";
import { PageHeader } from "@/components/page-header";
import { AuthProvider } from "@/context/AuthProvider";
import PrivateRoute from "@/context/PrivateRoute";

interface PageProps {
  params: {
    id: string;
  };
}

export async function generateStaticParams() {
  // Optional: Generate params dynamically for pre-rendering if needed.
  return []; // Replace with pre-generated IDs if applicable.
}

export default async function LaboratoryTestPage({ params }: PageProps) {
  // Access params dynamically to avoid the async error
  const id = await params?.id;
  if (!id) {
    notFound();
  }

  return (
    <AuthProvider>
      <PrivateRoute requiredRole="admin">
        <div className="flex flex-col h-screen">
          <div className="container mx-auto py-10 pl-3">
            <PageHeader
              title="Organization User Details"
              description="This page displays detailed information about organization users, allowing you to edit any field to manage their details efficiently."
            />
          </div>

          <div className="flex-1 mt-2">
            <CardDetails
              route={`api/GetOrganizationUserById/${id}`}
              actions={[
                {
                  label: "Go Back",
                  href: `/admin/org-users/inactive`,
                  variant: "default",
                },
              ]}
              backUrl="/admin/org-users/inactive"
            />
          </div>
        </div>{" "}
      </PrivateRoute>
    </AuthProvider>
  );
}
