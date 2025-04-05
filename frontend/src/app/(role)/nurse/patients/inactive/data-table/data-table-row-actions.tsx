import { useState } from "react";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import {
  Activity,
  BookOpenIcon,
  KeySquare,
  MoreHorizontal,
  ShieldX,
} from "lucide-react";
import { Row } from "@tanstack/react-table";
import { Patient } from "@/types/Patients";
import Link from "next/link";
import DeactivateUserForm from "@/components/forms/DeactivatePatientUser";
import ResetPasswordForm from "@/components/forms/ResetPatientPassword";
import { ResponsiveDialog } from "@/components/responsive-dialog";
import IconMenu from "@/components/icon-menu";

interface DataTableRowActionsProps<TData> {
  row: Row<TData>;
}

export function DataTableRowActions<TData extends Patient>({
  row,
}: DataTableRowActionsProps<TData>) {
  const [isEditOpen, setIsEditOpen] = useState(false);
  const [isDeleteOpen, setIsDeleteOpen] = useState(false);
  const patientId = row.original.id;
  const fullName = `${row.original.first_name} ${row.original.last_name}`;

  return (
    <>
      <ResponsiveDialog
        isOpen={isEditOpen}
        setIsOpen={setIsEditOpen}
        title="Reset User Password"
        description={`Generate a strong password and submit to securely reset the ${fullName}'s password.`}
      >
        <ResetPasswordForm userid={patientId} setIsOpen={setIsEditOpen} />
      </ResponsiveDialog>
      <ResponsiveDialog
        isOpen={isDeleteOpen}
        setIsOpen={setIsDeleteOpen}
        title="Deactivate User"
        description={`Are you sure you want to deactivate ${fullName}?`}
      >
        <DeactivateUserForm
          userid={patientId}
          setIsOpen={setIsDeleteOpen}
          fullname={fullName}
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
          <DropdownMenuSeparator />
          <DropdownMenuItem className="group flex w-full items-center justify-between  text-left p-0 text-sm font-base text-neutral-500 ">
            <button
              onClick={() => {
                setIsEditOpen(true);
              }}
              className="w-full justify-start flex rounded-md p-2 transition-all duration-75 "
            >
              <IconMenu
                text="Reset Password"
                icon={<KeySquare className="h-4 w-4" />}
              />
            </button>
          </DropdownMenuItem>
          <DropdownMenuSeparator />
          <DropdownMenuItem className="group flex w-full items-center justify-between  text-left p-0 text-sm font-base text-neutral-500 ">
            <button
              onClick={() => {
                setIsDeleteOpen(true);
              }}
              className="w-full justify-start flex text-red-500 rounded-md p-2 transition-all duration-75 "
            >
              <IconMenu
                text="Deactivate User"
                icon={<ShieldX className="h-4 w-4" />}
              />
            </button>
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>
    </>
  );
}
