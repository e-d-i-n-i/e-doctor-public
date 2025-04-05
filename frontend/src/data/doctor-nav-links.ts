import { Calendar, CreditCard, Settings, Smile, User } from "lucide-react";

export interface Command {
  icon: React.ComponentType;
  label: string;
  shortcut?: string;
  href: string;
}

export const commands: Command[] = [
  {
    icon: Calendar,
    label: "Calendar",
    href: "/calendar",
  },
  {
    icon: Smile,
    label: "Search Emoji",
    href: "/emoji",
  },
  {
    icon: User,
    label: "Profile",
    shortcut: "⌘P",
    href: "/profile",
  },
  {
    icon: CreditCard,
    label: "Billing",
    shortcut: "⌘B",
    href: "/billing",
  },
  {
    icon: Settings,
    label: "Settings",
    shortcut: "⌘S",
    href: "/settings",
  },
];
