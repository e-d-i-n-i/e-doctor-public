import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Activity, BookOpenIcon, MoreHorizontal } from "lucide-react";
import { Row } from "@tanstack/react-table";
import { Patient } from "@/types/Patients";
import Link from "next/link";

interface DataTableRowActionsProps<TData> {
  row: Row<TData>;
}

export function DataTableRowActions<TData extends Patient>({
  row,
}: DataTableRowActionsProps<TData>) {
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
              <Link href={`/nurse/patients/active/preview/${row.original.id}`}>
                <BookOpenIcon className="h-4 w-4" />{" "}
                <span className="text-sm font-normal"> View More </span>
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
              <Link href={`/nurse/patients/new/instance/${row.original.id}`}>
                <Activity className="h-4 w-4" />{" "}
                <span className="text-sm font-normal"> New Instance </span>
              </Link>
            </Button>
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>
    </>
  );
}
