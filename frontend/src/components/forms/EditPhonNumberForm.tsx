"use client";

import React, { Dispatch, SetStateAction } from "react";
import { toast } from "sonner";
import { Button } from "@/components/ui/button";
import { Form } from "@/components/ui/form";
import { zodResolver } from "@hookform/resolvers/zod";
import { Loader2, LockIcon } from "lucide-react";
import { useForm } from "react-hook-form";
import * as z from "zod";
import { Input } from "@/components/ui/input";
import { getUsername, getToken } from "@/hooks/auth"; // Import getToken
import {
  FormField,
  FormItem,
  FormLabel,
  FormControl,
  FormMessage,
} from "@/components/ui/form";

// Define the form schema with validation for phone numbers
const formSchema = z.object({
  userid: z.string(),
  new_phone_number: z
    .string()
    .min(10, "Phone number must be at least 10 digits long")
    .max(15, "Phone number cannot exceed 15 digits")
    .regex(/^\d+$/, "Phone number must contain only numbers"), // Ensure only numeric input
  current_password: z
    .string()
    .min(8, "Password must be at least 8 characters long"),
});

export default function EditPhoneNumberForm({
  userid,
  setIsOpen,
}: {
  userid: string;
  setIsOpen: Dispatch<SetStateAction<boolean>>;
}) {
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      userid: userid,
      new_phone_number: "",
      current_password: "",
    },
  });

  const isLoading = form.formState.isSubmitting;

  const onSubmit = async (values: z.infer<typeof formSchema>) => {
    try {
      const result = await updatePhoneNumber(
        values.userid,
        getUsername(),
        values.new_phone_number,
        values.current_password
      );
      toast.success(result.message || "Phone number updated successfully");
      setIsOpen(false); // Close the form on success
    } catch (error) {
      // Handle the error and display it using toast.error
      if (error instanceof Error) {
        toast.error(error.message || "An unexpected error occurred");
      } else {
        toast.error("An unexpected error occurred");
      }
    }
  };

  return (
    <Form {...form}>
      <form
        onSubmit={form.handleSubmit(onSubmit)}
        className="space-y-6 sm:px-0 px-4"
      >
        <FormField
          control={form.control}
          name="current_password"
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
                    value={field.value || ""}
                  />
                  <LockIcon
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
          name="new_phone_number"
          render={({ field }) => (
            <FormItem>
              <FormLabel>New Phone Number</FormLabel>
              <FormControl>
                <Input
                  type="text"
                  placeholder="Enter new phone number"
                  className="w-full"
                  {...field}
                  value={field.value || ""}
                />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />
        <div className="w-full flex justify-center sm:space-x-6">
          <Button
            size="lg"
            variant="outline"
            disabled={isLoading}
            className="w-full hidden sm:block"
            type="button"
            onClick={() => setIsOpen(false)}
          >
            Cancel
          </Button>
          <Button
            size="lg"
            type="submit"
            disabled={isLoading}
            className="w-full bg-green-500 hover:bg-green-400"
          >
            {isLoading ? (
              <>
                <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                Updating
              </>
            ) : (
              <span>Update Phone Number</span>
            )}
          </Button>
        </div>
      </form>
    </Form>
  );
}

export async function updatePhoneNumber(
  staff_id: string,
  username: string,
  new_phone_number: string,
  current_password: string
): Promise<{ message: string }> {
  const token = getToken(); // Retrieve the token
  if (!token) {
    throw new Error("No token found. User is not authenticated.");
  }

  const response = await fetch(
    process.env.NEXT_PUBLIC_CHANGE_PHONE_NUMBER_ENDPOINT!,
    {
      method: "POST",
      headers: {
        Authorization: `Bearer ${token}`, // Include the token
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        staff_id,
        username,
        new_phone_number,
        current_password,
      }),
    }
  );

  if (!response.ok) {
    const errorDetails = await response.json();
    throw new Error(errorDetails.error || "Failed to update phone number.");
  }

  return await response.json();
}
