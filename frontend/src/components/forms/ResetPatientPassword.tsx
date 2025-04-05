"use client";

import React, { Dispatch, SetStateAction, useState } from "react";
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
  newPassword: z.string().min(8, "Password must be at least 8 characters long"),
  current_password: z
    .string()
    .min(8, "Password must be at least 8 characters long"),
});

export default function ResetPasswordForm({
  userid,
  setIsOpen,
}: {
  userid: string;
  setIsOpen: Dispatch<SetStateAction<boolean>>;
}) {
  const [generatedPassword, setGeneratedPassword] = useState<string>("");
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      userid: userid,
      newPassword: "",
      current_password: "",
    },
  });

  const isLoading = form.formState.isSubmitting;

  const generateStrongPassword = () => {
    const chars =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()";
    let password = "";
    for (let i = 0; i < 8; i++) {
      password += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    setGeneratedPassword(password);
    form.setValue("newPassword", password); // Update form value
  };

  const onSubmit = async (values: z.infer<typeof formSchema>) => {
    try {
      const token = getToken(); // Retrieve the token
      if (!token) {
        throw new Error("No token found. User is not authenticated.");
      }

      const response = await axios.post(
        process.env.NEXT_PUBLIC_RESET_PATIENT_PWD_BY_ID_ENDPOINT!,
        {
          userid: values.userid,
          username: getUsername(), // Include the username
          newPassword: values.newPassword,
          current_password: values.current_password, // Include the current password
        },
        {
          headers: {
            Authorization: `Bearer ${token}`, // Include the token
          },
        }
      );

      if (response.status === 200) {
        toast.success("Password reset successfully");
        setIsOpen(false);
      } else {
        toast.error("Failed to reset password");
      }
    } catch (error) {
      if (axios.isAxiosError(error)) {
        toast.error(
          error.response?.data?.error ||
            "An error occurred while resetting the password"
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
        <div className="w-full flex flex-col space-y-4">
          <div className="w-full flex items-center space-x-2">
            <Input
              type="text"
              value={generatedPassword}
              readOnly
              placeholder="Click 'Generate Password'"
              className="w-full"
            />
            <Button
              type="button"
              onClick={generateStrongPassword}
              disabled={isLoading}
            >
              Generate Password
            </Button>
          </div>
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
              disabled={isLoading || !generatedPassword}
              className="w-full bg-green-500 hover:bg-green-400"
            >
              {isLoading ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Resetting
                </>
              ) : (
                <span>Reset Password</span>
              )}
            </Button>
          </div>
        </div>
      </form>
    </Form>
  );
}
