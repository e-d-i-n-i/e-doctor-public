import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { BadgeInfo, MessagesSquare, MoreHorizontal } from "lucide-react";
import { Row } from "@tanstack/react-table";
import { PatientContext } from "@/types/PatientContext"; // Update the import
import Link from "next/link";

interface DataTableRowActionsProps<TData> {
  row: Row<TData>;
}

export function DataTableRowActions<TData extends PatientContext>({
  row,
}: DataTableRowActionsProps<TData>) {
  const diagnosiId = row.original.diagnosis_id; // Updated to use patient_id

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
              className="w-full  justify-start flex rounded-md p-2 transition-all duration-75 "
              asChild
            >
              <Link href={`/doctor/diagnosis/preview/${diagnosiId}`}>
                <MessagesSquare className="h-4 w-4 text-blue-600" />{" "}
                <span className="text-sm font-normal"> View Discussion </span>
              </Link>
            </Button>
          </DropdownMenuItem>
          <DropdownMenuSeparator />

          <DropdownMenuItem className="group flex w-full items-center justify-between text-left p-0 text-sm font-base text-neutral-500 ">
            <Button
              variant="ghost"
              className="w-full  justify-start flex rounded-md p-2 transition-all duration-75 "
              asChild
            >
              <Link href={`/doctor/check-ups/completed/preview/${diagnosiId}`}>
                <BadgeInfo className="h-4 w-4 text-yellow-600" />{" "}
                <span className="text-sm font-normal"> View More </span>
              </Link>
            </Button>
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>
    </>
  );
}
