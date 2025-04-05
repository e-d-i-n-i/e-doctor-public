import { useState } from "react";
import axios from "axios";
import { toast } from "sonner";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";
import { CheckCircle2, AlertCircle } from "lucide-react";
import { getToken } from "@/hooks/auth";

// Zod schema for form validation
const formSchema = z.object({
  first_name: z.string().min(1, "First name is required"),
  last_name: z.string().min(1, "Last name is required"),
  date_of_birth: z.string().min(1, "Date of birth is required"),
  gender: z.string().min(1, "Gender is required"),
  phone_number: z
    .string()
    .min(1, "Phone number is required")
    .regex(/^\d{10}$/, "Phone number must be exactly 10 digits"), // Phone number validation
  marital_status: z.string().min(1, "Marital status is required"),
  occupation: z.string().optional(),
  nationality: z.string().min(1, "Nationality is required"),
  email: z.string().email("Invalid email address"), // Email validation
  profile_picture: z.string().optional(),
});

export function AddPatientUserForm() {
  const [alertInfo, setAlertInfo] = useState<{
    type: "success" | "error";
    message: string;
  } | null>(null);
  const [profilePictureFile, setProfilePictureFile] = useState<File | null>(
    null
  );

  // Setup react-hook-form
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      first_name: "",
      last_name: "",
      date_of_birth: "",
      gender: "",
      phone_number: "",
      marital_status: "",
      occupation: "",
      nationality: "",
      email: "",
      profile_picture: "",
    },
  });

  // Handle form submission
  const onSubmit = async (data: z.infer<typeof formSchema>) => {
    try {
      // Convert profile picture to base64 if a file is selected
      let profilePictureBase64 = "";
      if (profilePictureFile) {
        profilePictureBase64 = await new Promise<string>((resolve, reject) => {
          const reader = new FileReader();
          reader.onloadend = () => {
            if (typeof reader.result === "string") {
              resolve(reader.result.split(",")[1]); // Extract base64 data
            } else {
              reject(new Error("Failed to read file"));
            }
          };
          reader.onerror = () => reject(new Error("Failed to read file"));
          reader.readAsDataURL(profilePictureFile);
        });
      }

      // Include base64 profile picture in the request data
      const requestData = {
        ...data,
        profile_picture: profilePictureBase64,
      };

      // Send the request to the backend
      const response = await axios.post(
        "http://127.0.0.1:5000/api/AddPatient",
        requestData,
        {
          headers: {
            Authorization: `Bearer ${getToken()}`, // Include JWT token
          },
        }
      );

      console.log(response);

      // Show success toast
      toast.success("Patient added successfully!", { duration: 5000 });

      setAlertInfo({
        type: "success",
        message: "Patient added successfully!",
      });

      // Reset the form and clear the profile picture
      form.reset();
      setProfilePictureFile(null); // Clear the profile picture file
    } catch (error) {
      console.log("Error:", error);

      const errorMessage = axios.isAxiosError(error)
        ? error.response?.data?.error || "Failed to add patient."
        : "An unexpected error occurred.";

      // Show error toast
      toast.error(errorMessage);

      setAlertInfo({ type: "error", message: errorMessage });
    }
  };

  // Handle clear form
  const onClear = () => {
    form.reset();
    setProfilePictureFile(null); // Clear the profile picture file
    setAlertInfo(null); // Clear any alert messages
  };

  return (
    <div className="mb-5 p-2">
      <div className="p-6 border rounded-lg bg-white dark:bg-secondary shadow-lg">
        {alertInfo && (
          <Alert
            variant={alertInfo.type === "success" ? "default" : "destructive"}
            className={`mb-6 ${
              alertInfo.type === "success" ? "bg-green-100 text-green-800" : ""
            }`}
          >
            {alertInfo.type === "success" ? (
              <CheckCircle2 className="h-4 w-4 text-green-600" />
            ) : (
              <AlertCircle className="h-4 w-4" />
            )}
            <AlertTitle>
              {alertInfo.type === "success" ? "Success" : "Error"}
            </AlertTitle>
            <AlertDescription>{alertInfo.message}</AlertDescription>
          </Alert>
        )}
        <Form {...form}>
          <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
              {/* First Name */}
              <FormField
                control={form.control}
                name="first_name"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>First Name</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter first name" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Last Name */}
              <FormField
                control={form.control}
                name="last_name"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Last Name</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter last name" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Date of Birth */}
              <FormField
                control={form.control}
                name="date_of_birth"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Date of Birth</FormLabel>
                    <FormControl>
                      <Input type="date" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Gender */}
              <FormField
                control={form.control}
                name="gender"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Gender</FormLabel>
                    <Select
                      onValueChange={field.onChange}
                      value={field.value}
                      defaultValue=""
                    >
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="Select gender" />
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        <SelectItem value="male">Male</SelectItem>
                        <SelectItem value="female">Female</SelectItem>
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Phone Number */}
              <FormField
                control={form.control}
                name="phone_number"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Phone Number</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter phone number" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Marital Status */}
              <FormField
                control={form.control}
                name="marital_status"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Marital Status</FormLabel>
                    <Select
                      onValueChange={field.onChange}
                      value={field.value}
                      defaultValue=""
                    >
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="Select marital status" />
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        <SelectItem value="single">Single</SelectItem>
                        <SelectItem value="married">Married</SelectItem>
                        <SelectItem value="divorced">Divorced</SelectItem>
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Occupation */}
              <FormField
                control={form.control}
                name="occupation"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Occupation</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter occupation" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Nationality */}
              <FormField
                control={form.control}
                name="nationality"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Nationality</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter nationality" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Email */}
              <FormField
                control={form.control}
                name="email"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Email</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter email" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Profile Picture */}
              <FormField
                control={form.control}
                name="profile_picture"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Profile Picture</FormLabel>
                    <FormControl>
                      <Input
                        type="file"
                        accept="image/*"
                        onChange={(e) => {
                          const file = e.target.files?.[0];
                          if (file) {
                            setProfilePictureFile(file);
                          }
                        }}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
            </div>
            <div className="flex justify-end space-x-2">
              <Button type="button" variant="outline" onClick={onClear}>
                Clear
              </Button>
              <Button type="submit">Submit</Button>
            </div>
          </form>
        </Form>
      </div>
    </div>
  );
}
