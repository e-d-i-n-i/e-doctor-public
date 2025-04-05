import React, { useState } from "react";
import { useRouter } from "next/navigation";
import { Search } from "lucide-react";
import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
  CommandShortcut,
} from "@/components/ui/command";
import {
  Dialog,
  DialogContent,
  DialogTrigger,
  DialogTitle,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { VisuallyHidden } from "@radix-ui/react-visually-hidden"; // Import VisuallyHidden

interface Command {
  icon: React.ComponentType; // ComponentType ensures only valid React components
  label: string;
  href: string;
  shortcut?: string;
}

interface SearchBarProps {
  commands: Command[];
}

export function SearchBar({ commands }: SearchBarProps) {
  const [open, setOpen] = useState(false);
  const router = useRouter();

  const handleSelect = (command: Command) => {
    setOpen(false);
    router.push(command.href);
  };

  return (
    <Dialog open={open} onOpenChange={setOpen}>
      <DialogTrigger asChild>
        <Button
          variant="outline"
          className="relative h-8 w-full justify-start rounded-[0.5rem] bg-muted/50 text-sm font-normal text-muted-foreground shadow-none sm:pr-12 md:w-40 lg:w-56 xl:w-64"
        >
          <span className="hidden sm:inline-flex">Search commands...</span>
          <span className="inline-flex sm:hidden">Search</span>

          <Search className="absolute right-4 top-1/2 h-4 w-4 -translate-y-1/2 opacity-50" />
        </Button>
      </DialogTrigger>
      <DialogContent className="p-0">
        {/* Hidden DialogTitle for accessibility */}
        <VisuallyHidden>
          <DialogTitle>Search Commands</DialogTitle>
        </VisuallyHidden>
        <Command className="rounded-lg border shadow-md">
          <CommandInput placeholder="Type a command or search..." />
          <CommandList>
            <CommandEmpty>No results found.</CommandEmpty>
            <CommandGroup heading="Commands">
              {commands.map((command) => (
                <CommandItem
                  key={command.label}
                  onSelect={() => handleSelect(command)}
                >
                  <command.icon /> {/* Render icon */}
                  <span>{command.label}</span>
                  {command.shortcut && (
                    <CommandShortcut>{command.shortcut}</CommandShortcut>
                  )}
                </CommandItem>
              ))}
            </CommandGroup>
          </CommandList>
        </Command>
      </DialogContent>
    </Dialog>
  );
}
