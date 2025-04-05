"use client";

import * as React from "react";
import Link from "next/link";
import {
  Beaker,
  ChevronLeft,
  ChevronRight,
  LayoutDashboard,
  ShieldPlus,
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
          url: "/labTech",
        },
      ],
    },
  ],
  navTask: [
    {
      title: "Laboratory Requests",
      icon: Beaker,
      isActive: true,
      items: [
        {
          title: "Pending",
          url: "/labTech/laboratory/active",
        },
        {
          title: "Submitted",
          url: "/labTech/laboratory/submitted",
        },
      ],
    },
  ],
};

export function LaboratoryTechnicianSidebar({
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
                  <span className="truncate text-xs">
                    Laboratory Technician Account
                  </span>
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
            <VisuallyHidden>Laboratory Technician Sidebar</VisuallyHidden>
          </DialogTitle>
        )}

        <NavGeneral items={data.navGeneral} />
        <NavTasks items={data.navTask} />
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
