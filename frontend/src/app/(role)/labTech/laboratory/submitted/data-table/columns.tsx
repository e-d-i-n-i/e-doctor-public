import { ColumnDef } from "@tanstack/react-table";
import { DataTableColumnHeader } from "./data-table-column-header";
import { DataTableRowActions } from "./data-table-row-actions";
import { LaboratoryTestRequest } from "@/types/LabTestRequest"; // Adjust the import path
import {
  Tooltip,
  TooltipContent,
  TooltipProvider,
  TooltipTrigger,
} from "@/components/ui/tooltip";
import { AlertCircle } from "lucide-react";

export const columns: ColumnDef<LaboratoryTestRequest>[] = [
  {
    accessorKey: "test_type",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Test Type" />
    ),
    cell: ({ row }) => {
      const testType = row.getValue("test_type");
      const isEmpty = !testType;

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
            testType
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "priority_level",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Priority Level" />
    ),
    cell: ({ row }) => {
      const priorityLevel = row.getValue("priority_level");
      const isEmpty = !priorityLevel;

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
            priorityLevel
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "status",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Status" />
    ),
    cell: ({ row }) => {
      const status = row.getValue("status");
      const isEmpty = !status;

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
            status
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "requested_at",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Requested At" />
    ),
    cell: ({ row }) => {
      const requestedAt = row.getValue("requested_at");
      const isEmpty = !requestedAt;

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
            new Date(requestedAt as string).toLocaleString()
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "comments",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Comments" />
    ),
    cell: ({ row }) => {
      const comments = row.getValue("comments");
      const isEmpty = !comments;

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
            comments
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
