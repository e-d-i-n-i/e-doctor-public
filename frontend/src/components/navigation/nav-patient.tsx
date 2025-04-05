"use client";

import {
  ClipboardPlus,
  MoreHorizontal,
  UserPlus,
  UserRoundSearch,
  type LucideIcon,
} from "lucide-react";

import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import {
  SidebarGroup,
  SidebarGroupLabel,
  SidebarMenu,
  SidebarMenuAction,
  SidebarMenuButton,
  SidebarMenuItem,
  useSidebar,
} from "@/components/ui/sidebar";
import Link from "next/link";

export function NavPatient({
  projects,
}: {
  projects: {
    name: string;
    icon: LucideIcon; // Removed the `url` property
  }[];
}) {
  const { isMobile } = useSidebar();

  return (
    <SidebarGroup>
      <SidebarGroupLabel>Main</SidebarGroupLabel>
      <SidebarMenu>
        {projects.map((item) => (
          <SidebarMenuItem key={item.name}>
            <SidebarMenuButton>
              {/* Removed the `<a>` tag and `href` since `url` is no longer needed */}
              <item.icon />
              <span>{item.name}</span>
            </SidebarMenuButton>
            <DropdownMenu>
              <DropdownMenuTrigger asChild>
                <SidebarMenuAction showOnHover>
                  <MoreHorizontal />
                  <span className="sr-only">More</span>
                </SidebarMenuAction>
              </DropdownMenuTrigger>
              <DropdownMenuContent
                className="w-48 rounded-lg"
                side={isMobile ? "bottom" : "right"}
                align={isMobile ? "end" : "start"}
              >
                <DropdownMenuItem>
                  <UserPlus className="text-muted-foreground" />
                  <Link href={`/nurse/patient/new/register`}>New Patient</Link>
                </DropdownMenuItem>
                <DropdownMenuItem>
                  <ClipboardPlus className="text-muted-foreground" />
                  <Link href={"/nurse/patients/new/instance"}>
                    Activate Patient
                  </Link>
                </DropdownMenuItem>
                <DropdownMenuSeparator />
                <DropdownMenuItem>
                  <UserRoundSearch className="text-muted-foreground" />
                  <Link href={"/nurse/patients/search"}>Search Patient</Link>
                </DropdownMenuItem>
              </DropdownMenuContent>
            </DropdownMenu>
          </SidebarMenuItem>
        ))}
      </SidebarMenu>
    </SidebarGroup>
  );
}
