"use client";

import React from "react";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { getInitials } from "@/lib/utils";
import { ColumnDef } from "@tanstack/react-table";
import { DataTableColumnHeader } from "./data-table-column-header";
import { DataTableRowActions } from "./data-table-row-actions";
import {
  Tooltip,
  TooltipContent,
  TooltipProvider,
  TooltipTrigger,
} from "@/components/ui/tooltip";
import { OrganizationUser } from "@/types/OrganizationUser";
import { AlertCircle } from "lucide-react";

export const columns: ColumnDef<OrganizationUser>[] = [
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
      const imageUrl = `data:image/jpeg;base64,${image}`;

      const isEmpty = !firstName && !lastName;

      return (
        <div className="flex items-center space-x-2">
          <Avatar>
            <AvatarImage src={imageUrl} alt={name} />
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
    accessorKey: "role",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Role" />
    ),
    cell: ({ row }) => {
      const role = row.getValue("role");
      const isEmpty = !role;

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
            role
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "department",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Department" />
    ),
    cell: ({ row }) => {
      const department = row.getValue("department");
      const isEmpty = !department;

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
            department
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
