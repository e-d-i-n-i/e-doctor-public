import { useState } from "react";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { MoreHorizontal, Send } from "lucide-react";
import { Row } from "@tanstack/react-table";
import { FollowUpQuestion } from "@/types/FollowupQuestions"; // Adjust the import path
import Link from "next/link";
import { ResponsiveDialog } from "@/components/responsive-dialog";

interface DataTableRowActionsProps<TData> {
  row: Row<TData>;
}

export function DataTableRowActions<TData extends FollowUpQuestion>({
  row,
}: DataTableRowActionsProps<TData>) {
  const questionId = row.original.follow_up_question_id;

  return (
    <>
      <DropdownMenu>
        <DropdownMenuTrigger asChild>
          <Button variant="ghost" className="h-8 w-8 p-0">
            <span className="sr-only">Open menu</span>
            <MoreHorizontal className="h-4 w-4" />
          </Button>
        </DropdownMenuTrigger>
        <DropdownMenuContent align="end" className="w-[160px] z-50">
          <DropdownMenuItem className="group flex w-full items-center justify-between text-left p-0 text-sm font-base text-neutral-500 ">
            <Button
              variant="ghost"
              className="w-full justify-start flex rounded-md p-2 transition-all duration-75"
              asChild
            >
              <Link href={`/follow-up-questions/${questionId}`}>
                <Send className="h-4 w-4 text-blue-600" />{" "}
                <span className="text-sm font-normal">Answer Question</span>
              </Link>
            </Button>
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>
    </>
  );
}
