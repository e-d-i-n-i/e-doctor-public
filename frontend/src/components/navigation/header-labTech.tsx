"use client";

import React from "react";
import { NavUser } from "./nav-user";
import { getUserProfile } from "@/hooks/auth";
import { SearchBar } from "./search-bar";
import { ModeToggle } from "@/components/site/theme/theme-toggle";
import { commands } from "@/data/lab-technicain-nav-links";
import { Separator } from "@/components/ui/separator";
import { SidebarTrigger } from "@/components/ui/sidebar";

export function Header() {
  const [user, setUser] = React.useState({
    name: "user",
    email: "m@example.com",
    avatar: "/img/placeholder.png",
  });

  React.useEffect(() => {
    async function fetchProfile() {
      try {
        const profile = await getUserProfile();
        if (profile) {
          setUser({
            name: profile.full_name,
            email: profile.email,
            avatar: profile.profile_image || "/img/placeholder.png",
          });
        }
      } catch (error) {
        console.error("Failed to fetch user profile:", error);
      }
    }

    fetchProfile();
  }, []);

  return (
    <header className="lg:fixed sm:sticky top-2 right-2  z-50 flex h-16 items-center gap-2 md:rounded-lg sm:rounded-none border border-border bg-background shadow-md">
      <div className="flex w-full items-center gap-4 px-4">
        <SidebarTrigger />
        <Separator orientation="vertical" className="h-6" />
        <SearchBar commands={commands} />
        <ModeToggle />
        <Separator orientation="vertical" className="h-6" />
        <NavUser user={user} />
      </div>
    </header>
  );
}
