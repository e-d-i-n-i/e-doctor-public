"use client";

import * as React from "react";
import { Check, ChevronsUpDown } from "lucide-react";
import { cn } from "@/lib/utils";
import { Button } from "@/components/ui/button";
import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
} from "@/components/ui/command";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";

export function AdminsListCombobox({ field }) {
  const [open, setOpen] = React.useState(false);
  const [searchQuery, setSearchQuery] = React.useState("");
  const [adminUsers, setAdminUsers] = React.useState([]);

  React.useEffect(() => {
    // Fetch data from the endpoint
    fetch("http://127.0.0.1:5000/api/GetAdminUsers")
      .then((response) => response.json())
      .then((data) => setAdminUsers(data))
      .catch((error) => console.error("Error fetching admin users:", error));
  }, []);

  // Filter admin users based on search query
  const filteredAdminUsers = adminUsers.filter((user) =>
    user.full_name.toLowerCase().includes(searchQuery.toLowerCase())
  );

  return (
    <Popover open={open} onOpenChange={setOpen}>
      <PopoverTrigger asChild>
        <Button
          variant="outline"
          role="combobox"
          aria-expanded={open}
          className="w-[200px] justify-between"
        >
          {field.value
            ? adminUsers.find((user) => user.id === field.value)?.full_name
            : "Select admin user..."}
          <ChevronsUpDown className="ml-2 h-4 w-4 shrink-0 opacity-50" />
        </Button>
      </PopoverTrigger>
      <PopoverContent className="w-[200px] p-0">
        <Command>
          <CommandInput
            placeholder="Search Supervisor..."
            value={searchQuery}
            onValueChange={setSearchQuery}
          />
          <CommandList>
            <CommandEmpty>No admin user found.</CommandEmpty>
            <CommandGroup>
              {filteredAdminUsers.map((user) => (
                <CommandItem
                  key={user.id}
                  value={user.full_name} // Display by name
                  onSelect={() => {
                    field.onChange(user.id); // Pass the ID to the form
                    setOpen(false);
                  }}
                >
                  {user.full_name}
                  <Check
                    className={cn(
                      "ml-auto h-4 w-4",
                      field.value === user.id ? "opacity-100" : "opacity-0"
                    )}
                  />
                </CommandItem>
              ))}
            </CommandGroup>
          </CommandList>
        </Command>
      </PopoverContent>
    </Popover>
  );
}
