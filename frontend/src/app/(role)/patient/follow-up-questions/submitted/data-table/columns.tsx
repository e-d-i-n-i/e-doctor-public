import { ColumnDef } from "@tanstack/react-table";
import { DataTableColumnHeader } from "./data-table-column-header";
import { DataTableRowActions } from "./data-table-row-actions";
import { FollowUpQuestion } from "@/types/FollowUpQuestion"; // Adjust the import path
import {
  Tooltip,
  TooltipContent,
  TooltipProvider,
  TooltipTrigger,
} from "@/components/ui/tooltip";
import { AlertCircle } from "lucide-react";

export const columns: ColumnDef<FollowUpQuestion>[] = [
  {
    accessorKey: "category",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Category" />
    ),
    cell: ({ row }) => {
      const category = row.getValue("category");
      const isEmpty = !category;

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
            category
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "question",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Question" />
    ),
    cell: ({ row }) => {
      const question = row.getValue("question");
      const isEmpty = !question;

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
            question
          )}
        </div>
      );
    },
  },
  {
    accessorKey: "answer",
    header: ({ column }) => (
      <DataTableColumnHeader column={column} title="Answer" />
    ),
    cell: ({ row }) => {
      const answer = row.getValue("answer");
      const isEmpty = !answer;

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
            answer
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
    id: "actions",
    cell: ({ row }) => <DataTableRowActions row={row} />,
  },
];
