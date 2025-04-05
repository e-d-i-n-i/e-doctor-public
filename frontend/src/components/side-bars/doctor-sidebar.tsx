"use client";

import * as React from "react";
import Link from "next/link";
import {
  BookOpenText,
  ChevronLeft,
  ChevronRight,
  LayoutDashboard,
  SendIcon,
  ShieldPlus,
  Stethoscope,
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
import { NavResearch } from "../navigation/nav-research";

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
          url: "/doctor",
        },
        {
          title: "Patients",
          url: "/doctor",
        },
        {
          title: "Diagnosis",
          url: "/doctor",
        },
      ],
    },
  ],
  navTask: [
    {
      title: "Check-ups",
      icon: Stethoscope,
      isActive: true,
      items: [
        {
          title: "Active",
          url: "/doctor/check-ups/active",
        },
        {
          title: "Completed",
          url: "/doctor/check-ups/completed",
        },
      ],
    },
    {
      title: "Requests",
      icon: SendIcon,
      isActive: true,
      items: [
        {
          title: "Laboratory Requests",
          url: "#",
        },
        {
          title: "Follow-up Questions",
          url: "#",
        },
        {
          title: "Prescriptions",
          url: "#",
        },
        {
          title: "Recommendations",
          url: "#",
        },
      ],
    },
  ],

  projects: [
    {
      name: "Medical Research",
      icon: BookOpenText,
    },
  ],
};

export function DoctorSidebar({
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
                  <span className="truncate text-xs">Doctor Account</span>
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
            <VisuallyHidden>Doctor Sidebar</VisuallyHidden>
          </DialogTitle>
        )}

        <NavGeneral items={data.navGeneral} />
        <NavTasks items={data.navTask} />
        <NavResearch projects={data.projects} />
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
