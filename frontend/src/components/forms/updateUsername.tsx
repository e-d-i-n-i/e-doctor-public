"use client";

import * as React from "react";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";
import { toast } from "sonner";

import { cn } from "@/lib/utils";
import useMediaQuery from "@/hooks/use-media-query";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import {
  Drawer,
  DrawerClose,
  DrawerContent,
  DrawerDescription,
  DrawerFooter,
  DrawerHeader,
  DrawerTitle,
  DrawerTrigger,
} from "@/components/ui/drawer";
import { Input } from "@/components/ui/input";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { getToken, getUsername, setToken } from "@/hooks/auth";
import { Edit, Lock as LockClosedIcon } from "lucide-react";

// Form schema for updating username
const usernameFormSchema = z.object({
  newUsername: z.string().min(1, "New username is required"),
  password: z.string().min(6, "Password is required"),
});

type UsernameFormData = z.infer<typeof usernameFormSchema>;

// API function to update username
export async function updateUsername(
  currentUsername: string,
  newUsername: string,
  password: string
): Promise<{ message: string }> {
  const token = getToken(); // Retrieve the token
  if (!token) {
    throw new Error("No token found. User is not authenticated.");
  }

  const response = await fetch("http://127.0.0.1:5000/api/update_username", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${token}`, // Include the token
    },
    body: JSON.stringify({
      current_username: currentUsername,
      new_username: newUsername,
      password,
    }),
  });

  if (!response.ok) {
    const errorDetails = await response.json();
    throw new Error(errorDetails.error || "Failed to update username.");
  }

  return await response.json();
}
// Username change form component
function UsernameChangeForm({
  className,
  onSuccess,
}: React.ComponentProps<"form"> & {
  onSuccess: () => void;
}) {
  const [isLoading, setIsLoading] = React.useState(false);

  const form = useForm<UsernameFormData>({
    resolver: zodResolver(usernameFormSchema),
    defaultValues: {
      newUsername: "",
      password: "",
    },
  });

  const onSubmit = async (data: UsernameFormData) => {
    try {
      setIsLoading(true);

      // Fetch the current username
      const currentUsername = getUsername();
      if (!currentUsername) {
        throw new Error("Unable to fetch current username.");
      }

      // Call the API to update the username
      const response = await updateUsername(
        currentUsername,
        data.newUsername,
        data.password
      );

      // Store the new token if returned by the backend
      if (response.access_token) {
        setToken(response.access_token); // Update the token in storage
      }

      form.reset(); // Reset the form fields
      onSuccess(); // Call onSuccess only once
    } catch (err) {
      toast.error(
        err instanceof Error ? err.message : "Failed to update username."
      );
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <Form {...form}>
      <form
        onSubmit={form.handleSubmit(onSubmit)}
        className={cn("grid items-start gap-4", className)}
      >
        <FormField
          control={form.control}
          name="newUsername"
          render={({ field }) => (
            <FormItem>
              <FormLabel>New Username</FormLabel>
              <FormControl>
                <Input
                  type="text"
                  placeholder="Enter new username"
                  {...field}
                />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />
        <FormField
          control={form.control}
          name="password"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Password</FormLabel>
              <FormControl>
                <div className="relative">
                  <Input
                    type="password"
                    placeholder="Enter your password"
                    className="pl-10 pr-4 py-2"
                    {...field}
                  />
                  <LockClosedIcon
                    className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400"
                    size={16}
                  />
                </div>
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />
        <Button type="submit" disabled={isLoading}>
          {isLoading ? "Updating..." : "Save changes"}
        </Button>
      </form>
    </Form>
  );
}
// Main component
export function ChangeUsernameForm() {
  const [open, setOpen] = React.useState(false);
  const isDesktop = useMediaQuery("(min-width: 768px)");

  const handleClose = () => {
    setOpen(false);
  };

  const handleSuccess = () => {
    toast.success("Username updated successfully!");
    setTimeout(() => {
      setOpen(false);
    }, 2000);
  };

  if (isDesktop) {
    return (
      <Dialog
        open={open}
        onOpenChange={(isOpen) => (isOpen ? setOpen(true) : handleClose())}
      >
        <DialogTrigger asChild>
          <Button
            variant="outline"
            className="text-blue-500 hover:text-blue-600 dark:text-blue-400 dark:hover:text-blue-300"
          >
            <Edit className="h-4 w-4" />
            Change Username
          </Button>
        </DialogTrigger>
        <DialogContent className="sm:max-w-[425px] backdrop-filter-none">
          <DialogHeader>
            <DialogTitle>Change Username</DialogTitle>
            <DialogDescription>
              Update your username here. Click save when you&apos;re done.
            </DialogDescription>
          </DialogHeader>
          <UsernameChangeForm onSuccess={handleSuccess} />
        </DialogContent>
      </Dialog>
    );
  }

  return (
    <Drawer
      open={open}
      onOpenChange={(isOpen) => (isOpen ? setOpen(true) : handleClose())}
    >
      <DrawerTrigger asChild>
        <Button variant="outline">Change Username</Button>
      </DrawerTrigger>
      <DrawerContent>
        <DrawerHeader className="text-left">
          <DrawerTitle>Change Username</DrawerTitle>
          <DrawerDescription>
            Update your username here. Click save when you&apos;re done.
          </DrawerDescription>
        </DrawerHeader>
        <UsernameChangeForm className="px-4" onSuccess={handleSuccess} />
        <DrawerFooter className="pt-2">
          <DrawerClose asChild>
            <Button variant="outline">Cancel</Button>
          </DrawerClose>
        </DrawerFooter>
      </DrawerContent>
    </Drawer>
  );
}
