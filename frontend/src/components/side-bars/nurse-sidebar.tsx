"use client";

import * as React from "react";
import Link from "next/link";
import {
  ChevronLeft,
  ChevronRight,
  LayoutDashboard,
  ShieldPlus,
  SquareUserRound,
  Users,
} from "lucide-react";
import { NavTasks } from "@/components/navigation/nav-tasks";
import { NavGeneral } from "@/components/navigation/nav-general";
import { DialogTitle } from "@radix-ui/react-dialog";
import { VisuallyHidden } from "@radix-ui/react-visually-hidden";
import {
  Sidebar,
  SidebarContent,
  SidebarHeader,
  SidebarMenu,
  SidebarMenuButton,
  SidebarMenuItem,
  useSidebar,
} from "@/components/ui/sidebar";
import { useIsMobile } from "@/hooks/use-mobile";
import { NavPatient } from "../navigation/nav-patient";

const data = {
  user: {
    name: "user",
    email: "m@example.com",
    avatar: "/img/placeholder.png",
  },
  navGeneral: [
    {
      title: "Dashboard",
      icon: LayoutDashboard,
      isActive: true,
      items: [
        {
          title: "Overview",
          url: "/nurse",
        },
        {
          title: "Patients",
          url: "/nurse",
        },
      ],
    },
  ],
  navTask: [
    {
      title: "Patients",
      icon: Users,
      isActive: true,
      items: [
        {
          title: "Active Patients",
          url: "/nurse/patients/active",
        },
        {
          title: "Inactive Patients",
          url: "/nurse/patients/inactive",
        },
        {
          title: "Blocked Patients",
          url: "/nurse/patients/blocked",
        },
      ],
    },
  ],

  projects: [
    {
      name: "Patient",
      icon: SquareUserRound,
    },
  ],
};

export function NurseSidebar({
  ...props
}: React.ComponentProps<typeof Sidebar>) {
  const { toggleSidebar, state } = useSidebar();
  const isSidebarExpanded = state === "expanded";
  const isMobile = useIsMobile();

  return (
    <Sidebar collapsible="icon" variant="floating" {...props}>
      <SidebarHeader>
        <SidebarMenu>
          <SidebarMenuItem>
            <SidebarMenuButton size="lg" asChild>
              <Link href="/">
                <div className="flex aspect-square size-8 items-center justify-center rounded-lg bg-primary text-sidebar-primary-foreground">
                  <ShieldPlus className="size-4" />
                </div>
                <div className="grid flex-1 text-left text-sm leading-tight">
                  <span className="truncate font-chillax">e-doctor</span>
                  <span className="truncate text-xs">Nurse Account</span>
                </div>
              </Link>
            </SidebarMenuButton>
          </SidebarMenuItem>
        </SidebarMenu>
      </SidebarHeader>
      <SidebarContent>
        {/* Conditionally render DialogTitle only on mobile */}
        {isMobile && (
          <DialogTitle>
            <VisuallyHidden>Nurse Sidebar</VisuallyHidden>
          </DialogTitle>
        )}

        <NavGeneral items={data.navGeneral} />
        <NavTasks items={data.navTask} />
        <NavPatient projects={data.projects} />
        <div className="absolute bottom-4 right-2">
          <button
            type="button"
            className="absolute bottom-32 right-[-12px] flex h-6 w-6 items-center justify-center border border-muted-foreground/20 rounded-full bg-accent shadow-md hover:shadow-lg transition-shadow duration-300 ease-in-out"
            onClick={toggleSidebar}
          >
            {isSidebarExpanded ? (
              <ChevronLeft size={16} className="stroke-foreground" />
            ) : (
              <ChevronRight size={16} className="stroke-foreground" />
            )}
          </button>
        </div>
      </SidebarContent>
    </Sidebar>
  );
}
