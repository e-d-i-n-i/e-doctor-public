import { ColumnDef } from "@tanstack/react-table";
import { DataTableColumnHeader } from "./data-table-column-header";
import { DataTableRowActions } from "./data-table-row-actions";
import { Patient } from "@/types/Patients";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { getInitials } from "@/lib/utils";
import {
  Tooltip,
  TooltipContent,
  TooltipProvider,
  TooltipTrigger,
} from "@/components/ui/tooltip";
import { AlertCircle } from "lucide-react";

export const columns: ColumnDef<Patient>[] = [
  {
    id: "name",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Name" />
    ),
    cell: ({ row }) => {
      const firstName = row.original.first_name;
      const lastName = row.original.last_name;
      const name = `${firstName} ${lastName}`;
      const image = row.original.profile_picture;
      const imageUrl = image ? `data:image/jpeg;base64,${image}` : null;

      const isEmpty = !firstName && !lastName;

      return (
        <div className="flex items-center space-x-2">
          <Avatar>
            <AvatarImage src={imageUrl || undefined} alt={name} />
            <AvatarFallback>{getInitials(name)}</AvatarFallback>
          </Avatar>
          <div className="capitalize">
            {isEmpty ? (
              <TooltipProvider>
                <Tooltip>
                  <TooltipTrigger>
                    <AlertCircle className="h-4 w-4 text-yellow-500" />
                  </TooltipTrigger>
                  <TooltipContent>
                    <p>Empty field</p>
                  </TooltipContent>
                </Tooltip>
              </TooltipProvider>
            ) : (
              name
            )}
          </div>
        </div>
      );
    },
    accessorFn: (row) => `${row.first_name} ${row.last_name}`,
  },
  {
    accessorKey: "gender",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Gender" />
    ),
    cell: ({ row }) => {
      const gender = row.getValue("gender");
      const isEmpty = !gender;

      return (
        <div className="capitalize">
          {isEmpty ? (
            <TooltipProvider>
              <Tooltip>
                <TooltipTrigger>
                  <AlertCircle className="h-4 w-4 text-yellow-500" />
                </TooltipTrigger>
                <TooltipContent>
                  <p>Empty field</p>
                </TooltipContent>
              </Tooltip>
            </TooltipProvider>
          ) : (
            gender
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "phone_number",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Phone Number" />
    ),
    cell: ({ row }) => {
      const phoneNumber = row.getValue("phone_number");
      const isEmpty = !phoneNumber;

      return (
        <div>
          {isEmpty ? (
            <TooltipProvider>
              <Tooltip>
                <TooltipTrigger>
                  <AlertCircle className="h-4 w-4 text-yellow-500" />
                </TooltipTrigger>
                <TooltipContent>
                  <p>Empty field</p>
                </TooltipContent>
              </Tooltip>
            </TooltipProvider>
          ) : (
            phoneNumber
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "marital_status",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Marital Status" />
    ),
    cell: ({ row }) => {
      const maritalStatus = row.getValue("marital_status");
      const isEmpty = !maritalStatus;

      return (
        <div className="capitalize">
          {isEmpty ? (
            <TooltipProvider>
              <Tooltip>
                <TooltipTrigger>
                  <AlertCircle className="h-4 w-4 text-yellow-500" />
                </TooltipTrigger>
                <TooltipContent>
                  <p>Empty field</p>
                </TooltipContent>
              </Tooltip>
            </TooltipProvider>
          ) : (
            maritalStatus
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "occupation",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Occupation" />
    ),
    cell: ({ row }) => {
      const occupation = row.getValue("occupation");
      const isEmpty = !occupation;

      return (
        <div className="capitalize">
          {isEmpty ? (
            <TooltipProvider>
              <Tooltip>
                <TooltipTrigger>
                  <AlertCircle className="h-4 w-4 text-yellow-500" />
                </TooltipTrigger>
                <TooltipContent>
                  <p>Empty field</p>
                </TooltipContent>
              </Tooltip>
            </TooltipProvider>
          ) : (
            occupation
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "nationality",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Nationality" />
    ),
    cell: ({ row }) => {
      const nationality = row.getValue("nationality");
      const isEmpty = !nationality;

      return (
        <div className="capitalize">
          {isEmpty ? (
            <TooltipProvider>
              <Tooltip>
                <TooltipTrigger>
                  <AlertCircle className="h-4 w-4 text-yellow-500" />
                </TooltipTrigger>
                <TooltipContent>
                  <p>Empty field</p>
                </TooltipContent>
              </Tooltip>
            </TooltipProvider>
          ) : (
            nationality
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "email",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Email" />
    ),
    cell: ({ row }) => {
      const email = row.getValue("email");
      const isEmpty = !email;

      return (
        <div>
          {isEmpty ? (
            <TooltipProvider>
              <Tooltip>
                <TooltipTrigger>
                  <AlertCircle className="h-4 w-4 text-yellow-500" />
                </TooltipTrigger>
                <TooltipContent>
                  <p>Empty field</p>
                </TooltipContent>
              </Tooltip>
            </TooltipProvider>
          ) : (
            email
          )}
        </div>
      );
    },
  },
  {
    id: "actions",
    cell: ({ row }) => <DataTableRowActions row={row} />,
  },
];
