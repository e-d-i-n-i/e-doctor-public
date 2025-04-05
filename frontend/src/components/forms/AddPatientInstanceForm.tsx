import { useState } from "react";
import axios from "axios";
import { toast } from "sonner";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { DoctorssListCombobox } from "@/components/combo-boxes/doctors-list";
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";
import { CheckCircle2, AlertCircle } from "lucide-react";
import { getToken } from "@/hooks/auth";
import OpenAI from "openai";

const openai = new OpenAI({
  apiKey: process.env.NEXT_PUBLIC_OPENAI_API_KEY,
  dangerouslyAllowBrowser: true,
});

// Zod schema for form validation
const formSchema = z.object({
  doctor_id: z.string().min(1, "Doctor ID is required"),
  diagnosis_date: z
    .string()
    .min(1, "Diagnosis date is required")
    .refine(
      (date) => {
        const selectedDate = new Date(date);
        const today = new Date();
        today.setHours(0, 0, 0, 0); // Set time to midnight for accurate comparison
        return selectedDate >= today;
      },
      { message: "Diagnosis date must be today or in the future" }
    ),
  chief_complaints: z.string().min(1, "Chief complaints are required"),
  symptoms: z.string().min(1, "Symptoms are required"),
  symptom_details: z.string().min(1, "Symptom details are required"),
  pain_details: z.string().min(1, "Pain details are required"),
  duration_of_illness: z.string().min(1, "Duration of illness is required"),
  remedies_tried: z.string().optional(),
  vitals: z.string().min(1, "Vitals are required"),
  weight: z.number().min(0, "Weight must be a positive number"),
  height: z.number().min(0, "Height must be a positive number"),
  ongoing_medications: z.string().optional(),
  lifestyle_factors: z.string().min(1, "Lifestyle factors are required"),
  allergies_and_alerts: z.string().optional(),
  nurses_notes: z.string().optional(),
  instance_summary: z.string().optional(), // New field
});

interface AddPatientInstanceFormProps {
  patient_id: string; // patient_id is passed as a prop
}

export function AddPatientInstanceForm({
  patient_id,
}: AddPatientInstanceFormProps) {
  const [alertInfo, setAlertInfo] = useState<{
    type: "success" | "error";
    message: string;
  } | null>(null);
  const [isGenerating, setIsGenerating] = useState(false); // Loading state for data generation

  // Setup react-hook-form
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      doctor_id: "",
      diagnosis_date: "",
      chief_complaints: "",
      symptoms: "",
      symptom_details: "",
      pain_details: "",
      duration_of_illness: "",
      remedies_tried: "",
      vitals: "",
      weight: 0,
      height: 0,
      ongoing_medications: "",
      lifestyle_factors: "",
      allergies_and_alerts: "",
      nurses_notes: "",
      instance_summary: "", // New field
    },
  });

  // Function to generate random data using OpenAI
  const generateRandomData = async () => {
    try {
      setIsGenerating(true); // Start loading
      const prompt = `
        Generate random data for a patient instance form with the following fields:
        - chief_complaints (a short sentence)
        - symptoms (a short sentence)
        - symptom_details (a JSON object with symptom_start_date, frequency, severity)
        - pain_details (a JSON object with presence, location, type, intensity)
        - duration_of_illness (a short sentence)
        - remedies_tried (a short sentence)
        - vitals (a JSON object with heart_rate, blood_pressure, respiratory_rate)
        - weight (a number between 50 and 120)
        - height (a number between 150 and 200)
        - ongoing_medications (a short sentence)
        - lifestyle_factors (a JSON object with tobacco_use, alcohol_consumption, caffeine_consumption)
        - allergies_and_alerts (a short sentence)
        - nurses_notes (a short sentence)
        - instance_summary (a short summary of the patient's condition)

        Return the data as a JSON object.
      `;

      const response = await openai.chat.completions.create({
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: prompt }],
        max_tokens: 500,
      });

      // Parse the generated JSON data
      const generatedData = JSON.parse(response.choices[0].message.content);

      // Populate the form fields with the generated data
      form.setValue("chief_complaints", generatedData.chief_complaints);
      form.setValue("symptoms", generatedData.symptoms);
      form.setValue(
        "symptom_details",
        JSON.stringify(generatedData.symptom_details, null, 2)
      );
      form.setValue(
        "pain_details",
        JSON.stringify(generatedData.pain_details, null, 2)
      );
      form.setValue("duration_of_illness", generatedData.duration_of_illness);
      form.setValue("remedies_tried", generatedData.remedies_tried);
      form.setValue("vitals", JSON.stringify(generatedData.vitals, null, 2));
      form.setValue("weight", generatedData.weight);
      form.setValue("height", generatedData.height);
      form.setValue("ongoing_medications", generatedData.ongoing_medications);
      form.setValue(
        "lifestyle_factors",
        JSON.stringify(generatedData.lifestyle_factors, null, 2)
      );
      form.setValue("allergies_and_alerts", generatedData.allergies_and_alerts);
      form.setValue("nurses_notes", generatedData.nurses_notes);
      form.setValue("instance_summary", generatedData.instance_summary); // New field

      // Show success toast
      toast.success("Random data generated successfully!", { duration: 5000 });
    } catch (error) {
      console.error("Error generating random data:", error);
      toast.error("Failed to generate random data.");
    } finally {
      setIsGenerating(false); // Stop loading
    }
  };

  // Handle form submission
  const onSubmit = async (data: z.infer<typeof formSchema>) => {
    try {
      // Convert plain text to JSON for JSON fields
      const requestData = {
        ...data,
        patient_id: patient_id, // Include patient_id from props
        symptom_details: JSON.parse(data.symptom_details),
        pain_details: JSON.parse(data.pain_details),
        vitals: JSON.parse(data.vitals),
        lifestyle_factors: JSON.parse(data.lifestyle_factors),
        instance_summary: data.instance_summary, // New field
      };

      // Send the request to the backend
      const response = await axios.post(
        "http://127.0.0.1:5000/api/AddPatientInstance",
        requestData,
        {
          headers: {
            Authorization: `Bearer ${getToken()}`, // Include JWT token
          },
        }
      );

      // Show success toast
      toast.success("Patient instance added successfully!", { duration: 5000 });

      setAlertInfo({
        type: "success",
        message: `Patient instance added successfully! Diagnosis ID: ${response.data.diagnosis_id}, Diagnosis Code: ${response.data.diagnosis_code}`,
      });

      // Reset the form
      form.reset();
    } catch (error) {
      console.log("Error:", error);

      const errorMessage =
        error instanceof Error
          ? error.message
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
              {/* Doctor ID - Replaced with DoctorssListCombobox */}
              <FormField
                control={form.control}
                name="doctor_id"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Doctor</FormLabel>
                    <FormControl>
                      <DoctorssListCombobox field={field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Diagnosis Date */}
              <FormField
                control={form.control}
                name="diagnosis_date"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Diagnosis Date</FormLabel>
                    <FormControl>
                      <Input
                        type="date"
                        min={new Date().toISOString().split("T")[0]} // Set min date to today
                        {...field}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Chief Complaints - Textarea */}
              <FormField
                control={form.control}
                name="chief_complaints"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Chief Complaints</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter chief complaints"
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Symptoms - Textarea */}
              <FormField
                control={form.control}
                name="symptoms"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Symptoms</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter symptoms"
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Symptom Details - Textarea */}
              <FormField
                control={form.control}
                name="symptom_details"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Symptom Details (JSON)</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder='Example: {"symptom_start_date": "2023-10-01", "frequency": "daily", "severity": "moderate"}'
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Pain Details - Textarea */}
              <FormField
                control={form.control}
                name="pain_details"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Pain Details (JSON)</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder='Example: {"presence": true, "location": "chest", "type": "sharp", "intensity": 7}'
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Duration of Illness */}
              <FormField
                control={form.control}
                name="duration_of_illness"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Duration of Illness</FormLabel>
                    <FormControl>
                      <Input
                        placeholder="Enter duration of illness"
                        {...field}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Remedies Tried - Textarea */}
              <FormField
                control={form.control}
                name="remedies_tried"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Remedies Tried</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter remedies tried"
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Vitals - Textarea */}
              <FormField
                control={form.control}
                name="vitals"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Vitals (JSON)</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder='Example: {"heart_rate": 80, "blood_pressure": "120/80", "respiratory_rate": 16}'
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Weight */}
              <FormField
                control={form.control}
                name="weight"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Weight (kg)</FormLabel>
                    <FormControl>
                      <Input
                        type="number"
                        placeholder="Enter weight"
                        value={isNaN(field.value) ? "" : field.value} // Ensure value is not NaN
                        onChange={(e) => {
                          const value = parseFloat(e.target.value);
                          field.onChange(isNaN(value) ? "" : value); // Handle NaN case
                        }}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Height */}
              <FormField
                control={form.control}
                name="height"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Height (cm)</FormLabel>
                    <FormControl>
                      <Input
                        type="number"
                        placeholder="Enter height"
                        value={isNaN(field.value) ? "" : field.value} // Ensure value is not NaN
                        onChange={(e) => {
                          const value = parseFloat(e.target.value);
                          field.onChange(isNaN(value) ? "" : value); // Handle NaN case
                        }}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Ongoing Medications - Textarea */}
              <FormField
                control={form.control}
                name="ongoing_medications"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Ongoing Medications</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter ongoing medications"
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Lifestyle Factors - Textarea */}
              <FormField
                control={form.control}
                name="lifestyle_factors"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Lifestyle Factors (JSON)</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder='Example: {"tobacco_use": false, "alcohol_consumption": "occasional", "caffeine_consumption": "daily"}'
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Allergies and Alerts - Textarea */}
              <FormField
                control={form.control}
                name="allergies_and_alerts"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Allergies and Alerts</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter allergies and alerts"
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Nurses Notes - Textarea */}
              <FormField
                control={form.control}
                name="nurses_notes"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Nurses Notes</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter nurses notes"
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Instance Summary - Textarea */}
              <FormField
                control={form.control}
                name="instance_summary"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Instance Summary</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter a summary of the patient's condition"
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
            </div>
            <div className="flex justify-end space-x-2">
              <Button
                type="button"
                variant="outline"
                onClick={generateRandomData}
                disabled={isGenerating} // Disable button while generating data
              >
                {isGenerating ? "Generating..." : "Generate Random Data"}
              </Button>
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
