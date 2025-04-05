"use client";

import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { User } from "lucide-react";
import Link from "next/link";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Button } from "@/components/ui/button";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";
import LogoutButton from "@/components/auth/LogoutButton";
import { getUserRole } from "@/hooks/auth"; // Import getUserRole

interface User {
  name: string;
  email: string;
  avatar: string;
}

export function NavUser({ user }: { user: User }) {
  const [isOpen, setIsOpen] = useState(false);
  const role = getUserRole(); // Get the user's role

  // Function to determine the profile link based on the user's role
  const getProfileLink = () => {
    switch (role) {
      case "doctor":
        return "/doctor/profile";
      case "patient":
        return "/patient/profile";
      case "labTech":
        return "/labTech/profile";
      case "nurse":
        return "/nurse/profile";
      case "admin":
        return "/admin/profile";
      default:
        return "/profile"; // Default profile link
    }
  };

  return (
    <Popover open={isOpen} onOpenChange={setIsOpen}>
      <PopoverTrigger asChild>
        <Button
          variant="ghost"
          className="flex items-center px-2 py-2 rounded-full transition-all duration-300 hover:bg-popover"
        >
          <Avatar className="h-8 w-8">
            <AvatarImage src={user.avatar} alt={user.name} />
            <AvatarFallback className="bg-background text-foreground border-foreground border-2">
              {user.name.charAt(0)}
            </AvatarFallback>
          </Avatar>
        </Button>
      </PopoverTrigger>
      <AnimatePresence>
        {isOpen && (
          <PopoverContent
            className="w-64 p-0 bg-background border-border border-2 mt-2 rounded-lg shadow-md"
            sideOffset={5}
            align="end"
            side="right"
            forceMount
          >
            <motion.div
              initial={{ opacity: 0, scale: 0.95 }}
              animate={{ opacity: 1, scale: 1 }}
              exit={{ opacity: 0, scale: 0.95 }}
              transition={{ duration: 0.2 }}
            >
              <div className="p-4">
                <div className="flex items-center space-x-3 mb-4 pb-4 border-b border-border">
                  <Avatar className="h-12 w-12">
                    <AvatarImage src={user.avatar} alt={user.name} />
                    <AvatarFallback className="bg-sidebar-primary text-sidebar-primary-foreground">
                      {user.name.charAt(0)}
                    </AvatarFallback>
                  </Avatar>
                  <div>
                    <h4 className="text-sm text-foreground">{user.name}</h4>
                    <p className="text-xs text-foreground">{user.email}</p>
                  </div>
                </div>
                <div className="space-y-1">
                  <Link
                    href={getProfileLink()} // Use the dynamically generated profile link
                    className="flex items-center space-x-2 px-3 py-2 rounded-md transition-colors duration-200 text-foreground"
                    onClick={() => setIsOpen(false)} // Close the popover on click
                  >
                    <User className="w-4 h-4" />
                    <span className="text-sm">View Profile</span>
                  </Link>

                  <LogoutButton className="w-full mt-1 pt-1 border-t" />
                </div>
              </div>
            </motion.div>
          </PopoverContent>
        )}
      </AnimatePresence>
    </Popover>
  );
}
