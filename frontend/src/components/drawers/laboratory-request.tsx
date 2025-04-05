import { useState, useEffect } from "react";
import axios from "axios";
import { useFieldArray, useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { z } from "zod";
import { toast } from "sonner"; // Import sonner toast
import { Button } from "@/components/ui/button";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetDescription,
  SheetTrigger,
  SheetFooter,
  SheetClose,
} from "@/components/ui/sheet";
import { Plus, Trash2, TestTubeDiagonal } from "lucide-react";
import { Input } from "@/components/ui/input"; // Import Input component
import { Textarea } from "@/components/ui/textarea";
import { LaboratoryTestRequest } from "@/types/LaboratoryTestRequest";

type DrawerFormProps = {
  className?: string;
  diagnosis_id: string;
};

const initialRecord: LaboratoryTestRequest = {
  diagnosis_id: "",
  test_type: "",
  test_details: "",
  priority_level: "Normal",
  comments: "",
};

export const BulkLaboratoryTestRequestDrawer: React.FC<DrawerFormProps> = ({
  className,
  diagnosis_id,
}) => {
  const form = useForm({
    resolver: zodResolver(
      z.object({
        requests: z
          .array(
            z.object({
              diagnosis_id: z.string(),
              test_type: z.string().nonempty("Test type is required"), // Ensure test_type is required
              test_details: z.string().nonempty("Test details is required"),
              priority_level: z.string().nonempty("Priority level is required"), // Use string for priority_level
              comments: z
                .string()
                .max(500, "Comments must not exceed 500 characters")
                .optional(),
            })
          )
          .min(1, "At least one request is required"),
      })
    ),
    defaultValues: {
      requests: [{ ...initialRecord, diagnosis_id, test_type: "" }],
    },
  });

  const { fields, append, remove } = useFieldArray({
    control: form.control,
    name: "requests",
  });

  const onSubmit = async (data: { requests: LaboratoryTestRequest[] }) => {
    try {
      const response = await axios.post(
        "http://127.0.0.1:5000/api/laboratory-test-requests/bulk",
        data.requests
      );
      console.log(response);

      toast.success("Laboratory Test Requests added successfully!"); // Use sonner toast

      form.reset({
        requests: [{ ...initialRecord, diagnosis_id, test_type: "" }],
      });
    } catch (error) {
      console.log("Error:", error);

      const errorMessage = axios.isAxiosError(error)
        ? error.response?.data?.message ||
          "Failed to add Laboratory Test Requests."
        : "An unexpected error occurred.";

      toast.error(errorMessage); // Use sonner toast
    }
  };

  return (
    <div className={`${className}`}>
      <Sheet>
        <SheetTrigger asChild>
          <Button className="bg-green-600">
            <TestTubeDiagonal /> Send Laboratory Tests
          </Button>
        </SheetTrigger>
        <SheetContent side="right" className="w-[400px] sm:w-[540px]">
          <SheetHeader>
            <SheetTitle>Add Bulk Laboratory Test Requests</SheetTitle>
            <SheetDescription>
              Enter details for multiple laboratory test requests.
            </SheetDescription>
          </SheetHeader>
          <div className="p-4 overflow-y-auto max-h-[calc(100vh-200px)]">
            <Form {...form}>
              <form
                onSubmit={form.handleSubmit(onSubmit)}
                className="space-y-6"
              >
                {fields.map((field, index) => (
                  <div
                    key={field.id}
                    className="space-y-4 p-4 border rounded-md"
                  >
                    <div className="flex justify-between items-center">
                      <h3 className="text-lg font-semibold">
                        Request #{index + 1}
                      </h3>
                      <Button
                        type="button"
                        variant="ghost"
                        size="sm"
                        onClick={() => remove(index)}
                      >
                        <Trash2 className="h-4 w-4" />
                      </Button>
                    </div>
                    <div className="grid grid-cols-2 gap-4">
                      <FormField
                        control={form.control}
                        name={`requests.${index}.test_type`} // Use test_type
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>Test Type</FormLabel>
                            <FormControl>
                              <Input {...field} placeholder="Enter test type" />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                      <FormField
                        control={form.control}
                        name={`requests.${index}.priority_level`} // Use priority_level
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>Priority Level</FormLabel>
                            <FormControl>
                              <Input
                                {...field}
                                placeholder="Enter priority level"
                              />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                    </div>
                    <FormField
                      control={form.control}
                      name={`requests.${index}.test_details`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Test Details</FormLabel>
                          <FormControl>
                            <Textarea {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`requests.${index}.comments`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Comments</FormLabel>
                          <FormControl>
                            <Textarea {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                  </div>
                ))}
                <Button
                  type="button"
                  variant="outline"
                  onClick={() =>
                    append({ ...initialRecord, diagnosis_id, test_type: "" })
                  }
                >
                  <Plus className="mr-2 h-4 w-4" /> Add Another Request
                </Button>
                <SheetFooter>
                  <Button type="submit">Submit Requests</Button>
                  <SheetClose asChild>
                    <Button
                      variant="outline"
                      onClick={() => {
                        form.reset({
                          requests: [
                            { ...initialRecord, diagnosis_id, test_type: "" },
                          ],
                        });
                      }}
                    >
                      Cancel
                    </Button>
                  </SheetClose>
                </SheetFooter>
              </form>
            </Form>
          </div>
        </SheetContent>
      </Sheet>
    </div>
  );
};
