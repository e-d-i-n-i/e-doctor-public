import { BookCheck, Hourglass, House, User } from "lucide-react";

export interface Command {
  icon: React.ComponentType;
  label: string;
  shortcut?: string;
  href: string;
}

export const commands: Command[] = [
  {
    icon: House,
    label: "Home",
    href: "/labTech",
  },
  {
    icon: Hourglass,
    label: "Pending Laboratory Requests",
    href: "/labTech/laboratory/active",
  },
  {
    icon: BookCheck,
    label: "Submitted Laboratory Requests",
    href: "/labTech/laboratory/active",
  },
  {
    icon: User,
    label: "Profile",
    shortcut: "⌘P",
    href: "/labTech/profile",
  },
];
