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
import { Plus, Trash2, PillBottleIcon as PillBottle } from "lucide-react";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";

type PatientPrescription = {
  diagnosis_id: string;
  medication: string;
  dosage: string;
  duration: string;
  frequency: string;
  route_of_administration:
    | "Oral"
    | "Injection"
    | "Topical"
    | "Intravenous"
    | "Other";
  start_date: string;
  end_date?: string;
  instructions?: string;
  status?: "Active" | "Discontinued" | "Completed";
};

type DrawerFormProps = {
  className?: string;
  diagnosis_id: string;
};

const initialRecord: PatientPrescription = {
  diagnosis_id: "",
  medication: "",
  dosage: "",
  duration: "",
  frequency: "",
  route_of_administration: "Oral",
  start_date: new Date().toISOString().split("T")[0],
  end_date: new Date().toISOString().split("T")[0],
  instructions: "",
};

export const PrescribeDrawer: React.FC<DrawerFormProps> = ({
  className,
  diagnosis_id,
}) => {
  const form = useForm({
    resolver: zodResolver(
      z.object({
        prescriptions: z
          .array(
            z.object({
              diagnosis_id: z.string(),
              medication: z.string().optional(),
              dosage: z.string().nonempty("Dosage is required"),
              duration: z.string().nonempty("Duration is required"),
              frequency: z.string().nonempty("Frequency is required"),
              route_of_administration: z.enum([
                "Oral",
                "Injection",
                "Topical",
                "Intravenous",
                "Other",
              ]),
              start_date: z.string().nonempty("Start date is required"),
              end_date: z.string().optional(),
              instructions: z
                .string()
                .max(500, "Instructions must not exceed 500 characters")
                .optional(),
              status: z
                .enum(["Active", "Discontinued", "Completed"])
                .optional(),
            })
          )
          .min(1, "At least one prescription is required"),
      })
    ),
    defaultValues: {
      prescriptions: [{ ...initialRecord, diagnosis_id }],
    },
  });

  const { fields, append, remove } = useFieldArray({
    control: form.control,
    name: "prescriptions",
  });

  const onSubmit = async (data: { prescriptions: PatientPrescription[] }) => {
    try {
      const prescriptionWithTestId = data.prescriptions.map((prescription) => ({
        ...prescription,
        diagnosis_id: prescription.diagnosis_id,
      }));
      const response = await axios.post(
        "http://127.0.0.1:5000/api/patient-prescriptions/bulk",
        prescriptionWithTestId
      );
      console.log(response);

      toast.success("Patient Prescriptions added successfully!"); // Use sonner toast

      form.reset({
        prescriptions: [{ ...initialRecord, diagnosis_id }],
      });
    } catch (error) {
      console.log("Error:", error);

      const errorMessage = axios.isAxiosError(error)
        ? error.response?.data?.message ||
          "Failed to add Patient Prescriptions."
        : "An unexpected error occurred.";

      toast.error(errorMessage); // Use sonner toast
    }
  };

  const handleCancel = () => {
    toast.error("Prescription entry was cancelled."); // Use sonner toast
    form.reset({
      prescriptions: [{ ...initialRecord, diagnosis_id }],
    });
  };

  return (
    <div className={`${className}`}>
      <Sheet>
        <SheetTrigger asChild>
          <Button className="bg-blue-600">
            <PillBottle className="mr-2 h-4 w-4" /> Prescribe
          </Button>
        </SheetTrigger>
        <SheetContent side="right" className="w-[400px] sm:w-[540px]">
          <SheetHeader>
            <SheetTitle>Add Bulk Patient Prescriptions</SheetTitle>
            <SheetDescription>
              Enter details for multiple patient prescriptions.
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
                        Prescription #{index + 1}
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
                    <FormField
                      control={form.control}
                      name={`prescriptions.${index}.medication`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Medication</FormLabel>
                          <FormControl>
                            <Input {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`prescriptions.${index}.dosage`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Dosage</FormLabel>
                          <FormControl>
                            <Input {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`prescriptions.${index}.duration`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Duration</FormLabel>
                          <FormControl>
                            <Input {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`prescriptions.${index}.frequency`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Frequency</FormLabel>
                          <FormControl>
                            <Input {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`prescriptions.${index}.route_of_administration`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Route of Administration</FormLabel>
                          <Select
                            onValueChange={field.onChange}
                            defaultValue={field.value}
                          >
                            <FormControl>
                              <SelectTrigger>
                                <SelectValue placeholder="Select route" />
                              </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                              <SelectItem value="Oral">Oral</SelectItem>
                              <SelectItem value="Injection">
                                Injection
                              </SelectItem>
                              <SelectItem value="Topical">Topical</SelectItem>
                              <SelectItem value="Intravenous">
                                Intravenous
                              </SelectItem>
                              <SelectItem value="Other">Other</SelectItem>
                            </SelectContent>
                          </Select>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`prescriptions.${index}.start_date`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Start Date</FormLabel>
                          <FormControl>
                            <Input type="date" {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`prescriptions.${index}.end_date`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>End Date (Optional)</FormLabel>
                          <FormControl>
                            <Input type="date" {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`prescriptions.${index}.instructions`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Instructions</FormLabel>
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
                  onClick={() => append({ ...initialRecord, diagnosis_id })}
                >
                  <Plus className="mr-2 h-4 w-4" /> Add Another Prescription
                </Button>
                <SheetFooter>
                  <Button type="submit">Submit Prescriptions</Button>
                  <SheetClose asChild>
                    <Button variant="outline" onClick={handleCancel}>
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
