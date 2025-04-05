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
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";
import { CheckCircle2, AlertCircle } from "lucide-react";
import { getToken, getUsername } from "@/hooks/auth"; // Import getUsername
import OpenAI from "openai";

const openai = new OpenAI({
  apiKey: process.env.NEXT_PUBLIC_OPENAI_API_KEY,
  dangerouslyAllowBrowser: true,
});

// Zod schema for form validation
const formSchema = z.object({
  test_request_id: z.string().min(1, "Test Request ID is required"),
  test_type: z.string().min(1, "Test Type is required"),
  test_details: z.string().min(1, "Test Details are required"),
  initial_comments: z.string().optional(), // Initial comments from the test request
  lab_technician_comments: z.string().optional(), // Comments generated or entered by the lab technician
  result: z.string().min(1, "Result is required"),
});

interface AddLaboratoryReportFormProps {
  test_request_id: string; // test_request_id is passed as a prop
  test_type: string; // test_type is passed as a prop
  test_details: string; // test_details is passed as a prop
  initial_comments?: string; // initial_comments is optional
}

export function AddLaboratoryReportForm({
  test_request_id,
  test_type,
  test_details,
  initial_comments,
}: AddLaboratoryReportFormProps) {
  const [alertInfo, setAlertInfo] = useState<{
    type: "success" | "error";
    message: string;
  } | null>(null);
  const [isGenerating, setIsGenerating] = useState(false); // Loading state for data generation

  // Setup react-hook-form
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      test_request_id,
      test_type,
      test_details,
      initial_comments,
      lab_technician_comments: "", // Lab technician comments will be generated or entered
      result: "", // Result will be generated or entered manually
    },
  });

  // Function to generate a medical industry-level report using OpenAI
  const generateReport = async () => {
    try {
      setIsGenerating(true); // Start loading

      const prompt = `
        Generate a medical industry-level laboratory report based on the following details:
        - Test Type: ${test_type}
        - Test Details: ${test_details}
        - Initial Comments: ${
          initial_comments || "No initial comments provided"
        }

        The report should include:
        1. A detailed analysis of the test results.
        2. A conclusion summarizing the findings.
        3. Recommendations for further action (if necessary).
        4. Additional comments or observations from the lab technician.

        Return the report as a JSON object with the following structure:
        {
          "result": "Detailed analysis of the test results...",
          "conclusion": "Summary of the findings...",
          "recommendations": "Recommendations for further action...",
          "lab_technician_comments": "Additional comments or observations from the lab technician..."
        }
      `;

      const response = await openai.chat.completions.create({
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: prompt }],
        max_tokens: 500,
      });

      // Parse the generated JSON data
      const generatedData = JSON.parse(response.choices[0].message.content);

      // Populate the form fields with the generated data
      form.setValue("result", generatedData.result);
      form.setValue(
        "lab_technician_comments",
        generatedData.lab_technician_comments
      ); // Set generated lab technician comments

      // Show success toast
      toast.success("Laboratory report generated successfully!", {
        duration: 5000,
      });
    } catch (error) {
      console.error("Error generating laboratory report:", error);
      toast.error("Failed to generate laboratory report.");
    } finally {
      setIsGenerating(false); // Stop loading
    }
  };

  const onSubmit = async (data: z.infer<typeof formSchema>) => {
    try {
      // Get the username of the provider
      const username = getUsername();

      if (!username) {
        throw new Error("Username not found. Please log in.");
      }

      // Prepare the request payload with the desired field names
      const requestData = {
        request_id: data.test_request_id, // Map test_request_id to request_id
        username, // Include the username
        result: data.result, // Map result to result
        comments: data.lab_technician_comments, // Map lab_technician_comments to comments
      };

      // Send the request to the backend
      const response = await axios.post(
        "http://127.0.0.1:5000/api/InsertLaboratoryReport",
        requestData,
        {
          headers: {
            Authorization: `Bearer ${getToken()}`, // Include JWT token
          },
        }
      );

      // Show success toast
      toast.success("Laboratory report submitted successfully!", {
        duration: 5000,
      });

      setAlertInfo({
        type: "success",
        message: `Laboratory report submitted successfully!`,
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
              {/* Test Request ID */}
              <FormField
                control={form.control}
                name="test_request_id"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Test Request ID</FormLabel>
                    <FormControl>
                      <Input {...field} disabled />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Test Type */}
              <FormField
                control={form.control}
                name="test_type"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Test Type</FormLabel>
                    <FormControl>
                      <Input {...field} disabled />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Test Details */}
              <FormField
                control={form.control}
                name="test_details"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Test Details</FormLabel>
                    <FormControl>
                      <Textarea {...field} disabled rows={3} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Initial Comments */}
              <FormField
                control={form.control}
                name="initial_comments"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Initial Comments</FormLabel>
                    <FormControl>
                      <Textarea {...field} disabled rows={3} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Lab Technician Comments */}
              <FormField
                control={form.control}
                name="lab_technician_comments"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Lab Technician Comments</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter or generate lab technician comments"
                        {...field}
                        rows={3}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Result */}
              <FormField
                control={form.control}
                name="result"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Result</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter or generate the test result"
                        {...field}
                        rows={5}
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
                onClick={generateReport}
                disabled={isGenerating} // Disable button while generating data
              >
                {isGenerating ? "Generating..." : "Generate Report"}
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
