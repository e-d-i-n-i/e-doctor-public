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
import { AdminsListCombobox } from "@/components/combo-boxes/admins-list";

// Zod schema for form validation
const formSchema = z.object({
  first_name: z.string().min(1, "First name is required"),
  last_name: z.string().min(1, "Last name is required"),
  date_of_birth: z
    .string()
    .min(1, "Date of birth is required")
    .refine((val) => {
      const dob = new Date(val);
      const today = new Date();
      const age = today.getFullYear() - dob.getFullYear();
      return age >= 18;
    }, "User must be at least 18 years old"),
  date_of_joining: z
    .string()
    .min(1, "Date of joining is required")
    .refine((val) => {
      const doj = new Date(val);
      const today = new Date();
      return doj <= today;
    }, "Date of joining cannot be in the future"),
  gender: z.string().min(1, "Gender is required"),
  phone_number: z
    .string()
    .min(1, "Phone number is required")
    .refine((val) => /^\d{10}$/.test(val), "Phone number must be 10 digits"),
  role: z.string().min(1, "Role is required"),
  department: z.string().min(1, "Department is required"),
  email: z.string().email("Invalid email address"),
  employment_type: z.string().min(1, "Employment Type is required"),
  salary: z.string().min(1, "Salary is required"),
  shift: z.string().min(1, "Shift is required"),
  supervisor: z.string().optional(),
  address: z.string().min(1, "Address is required"),
  emergency_contact: z.string().min(1, "Emergency Contact is required"),
});

export function AddOrgUserForm() {
  const [alertInfo, setAlertInfo] = useState<{
    type: "success" | "error";
    message: string;
  } | null>(null);

  // Setup react-hook-form
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      first_name: "",
      last_name: "",
      date_of_birth: "",
      date_of_joining: "",
      gender: "",
      phone_number: "",
      role: "",
      department: "",
      email: "",
      employment_type: "",
      salary: "",
      shift: "",
      supervisor: "",
      address: "",
      emergency_contact: "",
    },
  });

  // Handle form submission
  const onSubmit = async (data: z.infer<typeof formSchema>) => {
    try {
      const response = await axios.post(
        "http://127.0.0.1:5000/api/AddOrganizationStaff",
        data
      );
      console.log(response);

      // Show success toast for 5 seconds
      toast.success("User added successfully!", { duration: 5000 });

      setAlertInfo({
        type: "success",
        message: "User added successfully!",
      });

      // Reset the form
      form.reset();
    } catch (error) {
      console.log("Error:", error);

      const errorMessage = axios.isAxiosError(error)
        ? error.response?.data?.error || "Failed to add User."
        : "An unexpected error occurred.";

      // Show error toast
      toast.error(errorMessage);

      setAlertInfo({ type: "error", message: errorMessage });
    }
  };

  // Handle clear form
  const onClear = () => {
    form.reset();
    setAlertInfo(null); // Clear any alert messages
  };

  return (
    <div className="mb-5 p-2">
      <div className=" p-6 border rounded-lg bg-white dark:bg-secondary shadow-lg">
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

              {/* Date of Joining */}
              <FormField
                control={form.control}
                name="date_of_joining"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Date of Joining</FormLabel>
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

              {/* Role */}
              <FormField
                control={form.control}
                name="role"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Role</FormLabel>
                    <Select
                      onValueChange={field.onChange}
                      value={field.value}
                      defaultValue=""
                    >
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="Select Role" />
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        <SelectItem value="admin">Administrator</SelectItem>
                        <SelectItem value="doctor">Doctor</SelectItem>
                        <SelectItem value="nurse">Nurse</SelectItem>
                        <SelectItem value="labTech">
                          Laboratory Technician
                        </SelectItem>
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Department */}
              <FormField
                control={form.control}
                name="department"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Department</FormLabel>
                    <Select
                      onValueChange={field.onChange}
                      value={field.value}
                      defaultValue=""
                    >
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="Select Department" />
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        <SelectItem value="medical">Medical</SelectItem>
                        <SelectItem value="administrative">
                          Administrative
                        </SelectItem>
                      </SelectContent>
                    </Select>
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
                      <Input placeholder="Enter Email Address" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Employment Type */}
              <FormField
                control={form.control}
                name="employment_type"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Employment Type</FormLabel>
                    <Select
                      onValueChange={field.onChange}
                      value={field.value}
                      defaultValue=""
                    >
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="Select Type" />
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        <SelectItem value="full-time">Full Time</SelectItem>
                        <SelectItem value="part-time">Part Time</SelectItem>
                        <SelectItem value="contract">Contract</SelectItem>
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Salary */}
              <FormField
                control={form.control}
                name="salary"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Salary</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter Salary" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Shift */}
              <FormField
                control={form.control}
                name="shift"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Shift</FormLabel>
                    <Select
                      onValueChange={field.onChange}
                      value={field.value}
                      defaultValue=""
                    >
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="Select Shift" />
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        <SelectItem value="day">Day</SelectItem>
                        <SelectItem value="night">Night</SelectItem>
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Supervisor */}
              <FormField
                control={form.control}
                name="supervisor"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Supervisor</FormLabel>
                    <FormControl>
                      <div>
                        <AdminsListCombobox field={field} />
                      </div>
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Address */}
              <FormField
                control={form.control}
                name="address"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Address</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter Address" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Emergency Contact */}
              <FormField
                control={form.control}
                name="emergency_contact"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Emergency Contact</FormLabel>
                    <FormControl>
                      <Input placeholder="Enter Emergency Contact" {...field} />
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
