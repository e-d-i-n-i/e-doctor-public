"use client";

import {
  Brain,
  MessagesSquare,
  MoreHorizontal,
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
import { generateUUID } from "@/utils/generates-uuid";

export function NavAI({
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
                  <MessagesSquare className="text-muted-foreground" />
                  <Link href={`/admin/ai/chat/${generateUUID()}`}>
                    New Chat
                  </Link>
                </DropdownMenuItem>
                {/* <DropdownMenuItem>
                  <History className="text-muted-foreground" />
                  <Link href={"/admin/ai"}>Chat History</Link>
                </DropdownMenuItem> */}
                <DropdownMenuSeparator />
                <DropdownMenuItem>
                  <Brain className="text-muted-foreground" />
                  <Link href={"/admin/ai/kb"}>Knowledge Base</Link>
                </DropdownMenuItem>
              </DropdownMenuContent>
            </DropdownMenu>
          </SidebarMenuItem>
        ))}
      </SidebarMenu>
    </SidebarGroup>
  );
}
