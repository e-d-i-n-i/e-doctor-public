"use client";

import { useState } from "react";

import EditForm from "@/components/forms/sample/edit-form";
import IconMenu from "@/components/icon-menu";
import { ResponsiveDialog } from "@/components/responsive-dialog";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Row } from "@tanstack/react-table";
import { Files, MoreHorizontal, ShieldCheck } from "lucide-react";
import ActivateUserForm from "@/components/forms/ActiveOrganizationUserById";
import Link from "next/link";

interface WithId<T> {
  id: string;
  first_name: string;
  last_name: string;
  profile_picture?: string | null;
}
interface DataTableRowActionsProps<TData> {
  row: Row<TData>;
}

export function DataTableRowActions<TData extends WithId<string>>({
  row,
}: DataTableRowActionsProps<TData>) {
  const [isEditOpen, setIsEditOpen] = useState(false);
  const [isDeleteOpen, setIsDeleteOpen] = useState(false);
  const cardId = row.original.id as string;
  const fullName = `${row.original.first_name} ${row.original.last_name}`;

  return (
    <>
      <ResponsiveDialog
        isOpen={isEditOpen}
        setIsOpen={setIsEditOpen}
        title="Edit Person"
      >
        <EditForm cardId={cardId} setIsOpen={setIsEditOpen} />
      </ResponsiveDialog>
      <ResponsiveDialog
        isOpen={isDeleteOpen}
        setIsOpen={setIsDeleteOpen}
        title="Activate User"
        description={`Are you sure you want to activate ${fullName}?`}
      >
        <ActivateUserForm
          userid={cardId}
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
          <DropdownMenuItem className="group flex w-full items-center justify-between  text-left p-0 text-sm font-base text-neutral-500 ">
            <Button
              variant="ghost"
              className="w-full  justify-start flex rounded-md p-2 transition-all duration-75 "
              asChild
            >
              <Link href={`/admin/org-users/inactive/${row.original.id}`}>
                <Files className="h-4 w-4" />{" "}
                <span className="text-sm font-normal"> View More </span>
              </Link>
            </Button>
          </DropdownMenuItem>
          <DropdownMenuSeparator />

          <DropdownMenuItem className="group flex w-full items-center justify-between  text-left p-0 text-sm font-base text-neutral-500 ">
            <button
              onClick={() => {
                setIsDeleteOpen(true);
              }}
              className="w-full justify-start flex text-green-500 rounded-md p-2 transition-all duration-75 "
            >
              <IconMenu
                text="Activate User"
                icon={<ShieldCheck className="h-4 w-4" />}
              />
            </button>
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>
    </>
  );
}
