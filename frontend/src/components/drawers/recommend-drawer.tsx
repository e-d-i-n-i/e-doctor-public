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
import { Plus, Trash2, Lightbulb } from "lucide-react";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";

type Recommendation = {
  diagnosis_id: string;
  recommendation_type:
    | "Lifestyle"
    | "Dietary"
    | "Physical Activity"
    | "Mental Health"
    | "Medication"
    | "Rest"
    | "Hydration"
    | "Sleep Hygiene"
    | "Stress Management"
    | "Preventive Care"
    | "Workplace Ergonomics"
    | "Social Interaction";
  recommendation_text: string;
  comments: string;
};

type DrawerFormProps = {
  className?: string;
  diagnosis_id: string;
};

const initialRecord: Recommendation = {
  diagnosis_id: "",
  recommendation_type: "Lifestyle",
  recommendation_text: "",
  comments: "",
};

export const RecommendDrawer: React.FC<DrawerFormProps> = ({
  className,
  diagnosis_id,
}) => {
  const form = useForm({
    resolver: zodResolver(
      z.object({
        recommendations: z
          .array(
            z.object({
              diagnosis_id: z.string(),
              recommendation_text: z
                .string()
                .nonempty("Recommendation text is required"),
              recommendation_type: z.enum([
                "Lifestyle",
                "Dietary",
                "Physical Activity",
                "Mental Health",
                "Medication",
                "Rest",
                "Hydration",
                "Sleep Hygiene",
                "Stress Management",
                "Preventive Care",
                "Workplace Ergonomics",
                "Social Interaction",
              ]),
              comments: z.string().optional(),
            })
          )
          .min(1, "At least one recommendation is required"),
      })
    ),
    defaultValues: {
      recommendations: [{ ...initialRecord, diagnosis_id }],
    },
  });

  const { fields, append, remove } = useFieldArray({
    control: form.control,
    name: "recommendations",
  });

  const onSubmit = async (data: { recommendations: Recommendation[] }) => {
    try {
      const recommendationWithTestId = data.recommendations.map(
        (recommendation) => ({
          ...recommendation,
          diagnosis_id: recommendation.diagnosis_id,
        })
      );
      const response = await axios.post(
        "http://127.0.0.1:5000/api/patient-recommendations/bulk",
        recommendationWithTestId
      );
      console.log(response);

      toast.success("Patient Recommendations added successfully!"); // Use sonner toast

      form.reset({
        recommendations: [{ ...initialRecord, diagnosis_id }],
      });
    } catch (error) {
      console.log("Error:", error);

      const errorMessage = axios.isAxiosError(error)
        ? error.response?.data?.message ||
          "Failed to add Patient Recommendations."
        : "An unexpected error occurred.";

      toast.error(errorMessage); // Use sonner toast
    }
  };

  const handleCancel = () => {
    toast.error("Recommendation entry was cancelled."); // Use sonner toast
    form.reset({
      recommendations: [{ ...initialRecord, diagnosis_id }],
    });
  };

  return (
    <div className={`${className}`}>
      <Sheet>
        <SheetTrigger asChild>
          <Button className="bg-purple-600">
            <Lightbulb className="mr-2 h-4 w-4" /> Recommend
          </Button>
        </SheetTrigger>
        <SheetContent side="right" className="w-[400px] sm:w-[540px]">
          <SheetHeader>
            <SheetTitle>Recommend Patient</SheetTitle>
            <SheetDescription>
              Enter details for recommendation(s).
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
                        Recommendation #{index + 1}
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
                      name={`recommendations.${index}.recommendation_text`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Recommendation</FormLabel>
                          <FormControl>
                            <Textarea {...field} />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`recommendations.${index}.recommendation_type`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Recommendation Category</FormLabel>
                          <Select
                            onValueChange={field.onChange}
                            value={field.value}
                          >
                            <FormControl>
                              <SelectTrigger>
                                <SelectValue>
                                  {field.value || "Select Category"}
                                </SelectValue>
                              </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                              <SelectItem value="Lifestyle">
                                Lifestyle
                              </SelectItem>
                              <SelectItem value="Dietary">Dietary</SelectItem>
                              <SelectItem value="Physical Activity">
                                Physical Activity
                              </SelectItem>
                              <SelectItem value="Mental Health">
                                Mental Health
                              </SelectItem>
                              <SelectItem value="Medication">
                                Medication
                              </SelectItem>
                              <SelectItem value="Rest">Rest</SelectItem>
                              <SelectItem value="Hydration">
                                Hydration
                              </SelectItem>
                              <SelectItem value="Sleep Hygiene">
                                Sleep Hygiene
                              </SelectItem>
                              <SelectItem value="Stress Management">
                                Stress Management
                              </SelectItem>
                              <SelectItem value="Preventive Care">
                                Preventive Care
                              </SelectItem>
                              <SelectItem value="Workplace Ergonomics">
                                Workplace Ergonomics
                              </SelectItem>
                              <SelectItem value="Social Interaction">
                                Social Interaction
                              </SelectItem>
                            </SelectContent>
                          </Select>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                    <FormField
                      control={form.control}
                      name={`recommendations.${index}.comments`}
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>Additional Comment</FormLabel>
                          <FormControl>
                            <Input {...field} />
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
                  <Plus className="mr-2 h-4 w-4" /> Add Another Recommendation
                </Button>
                <SheetFooter>
                  <Button type="submit">Submit Recommendations</Button>
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
