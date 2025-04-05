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

// Define the form schema with validation for profile picture
const formSchema = z.object({
  userid: z.string(),
  new_profile_picture: z
    .instanceof(File)
    .refine(
      (file) => file.size <= 5 * 1024 * 1024,
      "File size must be less than 5MB"
    ) // Max 5MB
    .refine(
      (file) => ["image/jpeg", "image/png", "image/gif"].includes(file.type),
      "Only JPEG, PNG, and GIF images are allowed"
    ), // Allowed file types
  current_password: z
    .string()
    .min(8, "Password must be at least 8 characters long"),
});

export default function UpdateProfilePictureForm({
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
      new_profile_picture: undefined,
      current_password: "",
    },
  });

  const isLoading = form.formState.isSubmitting;

  const onSubmit = async (values: z.infer<typeof formSchema>) => {
    try {
      const formData = new FormData();
      formData.append("staff_id", values.userid);
      formData.append("username", getUsername());
      formData.append("new_profile_picture", values.new_profile_picture);
      formData.append("current_password", values.current_password);

      const result = await updateProfilePicture(formData);
      toast.success(result.message || "Profile picture updated successfully");
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
        encType="multipart/form-data"
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
          name="new_profile_picture"
          render={({ field }) => (
            <FormItem>
              <FormLabel>New Profile Picture</FormLabel>
              <FormControl>
                <Input
                  type="file"
                  accept="image/jpeg, image/png, image/gif"
                  onChange={(e) => {
                    if (e.target.files && e.target.files[0]) {
                      field.onChange(e.target.files[0]);
                    }
                  }}
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
              <span>Update Profile Picture</span>
            )}
          </Button>
        </div>
      </form>
    </Form>
  );
}

export async function updateProfilePicture(
  formData: FormData
): Promise<{ message: string }> {
  const token = getToken(); // Retrieve the token
  if (!token) {
    throw new Error("No token found. User is not authenticated.");
  }

  // Convert the file to a base64-encoded string
  const file = formData.get("new_profile_picture") as File;
  const base64 = await new Promise<string>((resolve, reject) => {
    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = () => resolve(reader.result as string);
    reader.onerror = (error) => reject(error);
  });

  const response = await fetch(
    process.env.NEXT_PUBLIC_CHANGE_PROFILE_PICTURE_ENDPOINT!,
    {
      method: "POST",
      headers: {
        Authorization: `Bearer ${token}`, // Include the token
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        staff_id: formData.get("staff_id"),
        username: formData.get("username"),
        new_profile_picture: base64.split(",")[1], // Remove the data URL prefix
        current_password: formData.get("current_password"),
      }),
    }
  );

  if (!response.ok) {
    const errorDetails = await response.json();
    throw new Error(errorDetails.error || "Failed to update profile picture.");
  }

  return await response.json();
}
