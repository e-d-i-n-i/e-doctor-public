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
import { getUsername } from "@/hooks/auth";
import { Edit, LockOpenIcon as LockClosedIcon } from "lucide-react";
import { updatePassword } from "@/api/user";

const formSchema = z
  .object({
    currentPassword: z.string().min(6, "Current password is required"),
    newPassword: z
      .string()
      .min(6, "New password must be at least 6 characters"),
    confirmPassword: z.string().min(6, "Please confirm the new password"),
  })
  .refine((data) => data.newPassword === data.confirmPassword, {
    message: "Passwords don't match",
    path: ["confirmPassword"],
  });

type FormData = z.infer<typeof formSchema>;

export function ChangePasswordForm() {
  const [open, setOpen] = React.useState(false);
  const isDesktop = useMediaQuery("(min-width: 768px)");

  const handleClose = () => {
    setOpen(false);
  };

  const handleSuccess = () => {
    toast.success("Password updated successfully!");
    // Delay closing the dialog to show the success message
    setTimeout(() => {
      setOpen(false);
    }, 2000); // Adjust delay as needed
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
            Change Password
          </Button>
        </DialogTrigger>
        <DialogContent className="sm:max-w-[425px] backdrop-filter-none">
          <DialogHeader>
            <DialogTitle>Change Password</DialogTitle>
            <DialogDescription>
              Update your password here. Click save when you&apos;re done.
            </DialogDescription>
          </DialogHeader>
          <PasswordChangeForm onSuccess={handleSuccess} />
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
        <Button variant="outline">Change Password</Button>
      </DrawerTrigger>
      <DrawerContent>
        <DrawerHeader className="text-left">
          <DrawerTitle>Change Password</DrawerTitle>
          <DrawerDescription>
            Update your password here. Click save when you&apos;re done.
          </DrawerDescription>
        </DrawerHeader>
        <PasswordChangeForm className="px-4" onSuccess={handleSuccess} />
        <DrawerFooter className="pt-2">
          <DrawerClose asChild>
            <Button variant="outline">Cancel</Button>
          </DrawerClose>
        </DrawerFooter>
      </DrawerContent>
    </Drawer>
  );
}

function PasswordChangeForm({
  className,
  onSuccess,
}: React.ComponentProps<"form"> & {
  onSuccess: () => void;
}) {
  const [isLoading, setIsLoading] = React.useState(false);

  const form = useForm<FormData>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      currentPassword: "",
      newPassword: "",
      confirmPassword: "",
    },
  });

  const onSubmit = async (data: FormData) => {
    const username = getUsername();
    if (!username) {
      toast.error("Unable to fetch username.");
      return;
    }

    try {
      setIsLoading(true);
      const response = await updatePassword(
        username,
        data.currentPassword,
        data.newPassword,
        data.confirmPassword
      );
      form.reset(); // Reset the form fields
      onSuccess(); // Call onSuccess only once
    } catch (err) {
      toast.error(
        err instanceof Error ? err.message : "Failed to update password."
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
          name="currentPassword"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Current Password</FormLabel>
              <FormControl>
                <div className="relative">
                  <Input
                    type="password"
                    placeholder="Enter current password"
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
        <FormField
          control={form.control}
          name="newPassword"
          render={({ field }) => (
            <FormItem>
              <FormLabel>New Password</FormLabel>
              <FormControl>
                <div className="relative">
                  <Input
                    type="password"
                    placeholder="Enter new password"
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
        <FormField
          control={form.control}
          name="confirmPassword"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Confirm Password</FormLabel>
              <FormControl>
                <div className="relative">
                  <Input
                    type="password"
                    placeholder="Confirm new password"
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
