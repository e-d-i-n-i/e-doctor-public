import { useState } from "react";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { MoreHorizontal, Send } from "lucide-react";
import { Row } from "@tanstack/react-table";
import { FollowUpQuestion } from "@/types/FollowupQuestions"; // Adjust the import path
import { ResponsiveDialog } from "@/components/responsive-dialog";
import AnswerFollowUpForm from "@/components/forms/AnswerFollowupForm";
import IconMenu from "@/components/icon-menu";

interface DataTableRowActionsProps<TData> {
  row: Row<TData>;
}

export function DataTableRowActions<TData extends FollowUpQuestion>({
  row,
}: DataTableRowActionsProps<TData>) {
  const questionId = row.original.follow_up_question_id;
  const question = row.original.question;
  const [isEditOpen, setIsEditOpen] = useState(false);

  return (
    <>
      <ResponsiveDialog
        isOpen={isEditOpen}
        setIsOpen={setIsEditOpen}
        title="Respond to Follow-Up Question"
        description={`Provide a detailed response to the follow-up question: "${question}". Ensure clarity and accuracy in your answer.`}
      >
        <AnswerFollowUpForm
          question_id={questionId}
          setIsOpen={setIsEditOpen}
        />
      </ResponsiveDialog>

      <DropdownMenu>
        <DropdownMenuTrigger asChild>
          <Button variant="ghost" className="h-8 w-8 p-0">
            <span className="sr-only">Open menu</span>
            <MoreHorizontal className="h-4 w-4" />
          </Button>
        </DropdownMenuTrigger>
        <DropdownMenuContent align="end" className="w-[160px] z-50">
          <DropdownMenuItem className="group flex w-full items-center justify-between  text-left p-0 text-sm font-base text-neutral-500 ">
            <button
              onClick={() => {
                setIsEditOpen(true);
              }}
              className="w-full justify-start flex rounded-md p-2 transition-all duration-75 "
            >
              <IconMenu
                text="Answer Question"
                icon={<Send className="h-4 w-4" />}
              />
            </button>
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>
    </>
  );
}
