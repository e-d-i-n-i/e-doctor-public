"use client";

import React, { Dispatch, SetStateAction } from "react";
import axios from "axios";
import { toast } from "sonner";
import { Button } from "@/components/ui/button";
import { Form } from "@/components/ui/form";
import { zodResolver } from "@hookform/resolvers/zod";
import { Loader2, LockIcon } from "lucide-react";
import { useForm } from "react-hook-form";
import * as z from "zod";
import { Input } from "@/components/ui/input";
import { getUsername, getToken } from "@/hooks/auth"; // Import getToken and getUsername
import {
  FormField,
  FormItem,
  FormLabel,
  FormControl,
  FormMessage,
} from "@/components/ui/form";

const formSchema = z.object({
  userid: z.string(),
  current_password: z
    .string()
    .min(8, "Password must be at least 8 characters long"),
});

export default function ActivateUserForm({
  userid,
  fullname,
  setIsOpen,
}: {
  userid: string;
  fullname: string;
  setIsOpen: Dispatch<SetStateAction<boolean>>;
}) {
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      userid: userid,
      current_password: "",
    },
  });

  const isLoading = form.formState.isSubmitting;

  const onSubmit = async (values: z.infer<typeof formSchema>) => {
    try {
      const token = getToken(); // Retrieve the token
      if (!token) {
        throw new Error("No token found. User is not authenticated.");
      }

      const response = await axios.post(
        process.env.NEXT_PUBLIC_ACTIVATE_PATIENT_BY_ID_ENDPOINT!,
        {
          userid: values.userid,
          username: getUsername(), // Include the username
          current_password: values.current_password, // Include the current password
        },
        {
          headers: {
            Authorization: `Bearer ${token}`, // Include the token
          },
        }
      );

      if (response.status === 200) {
        toast.success(`User ${fullname} activated successfully`);
        setIsOpen(false);
      } else {
        toast.error("Failed to activate user");
      }
    } catch (error) {
      if (axios.isAxiosError(error)) {
        toast.error(
          error.response?.data?.error ||
            "An error occurred while activating the user"
        );
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
                Activating
              </>
            ) : (
              <span>Activate</span>
            )}
          </Button>
        </div>
      </form>
    </Form>
  );
}
