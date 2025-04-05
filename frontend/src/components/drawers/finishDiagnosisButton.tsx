"use client";

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
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";
import { CheckCircle2, AlertCircle, MessageCircleX } from "lucide-react";
import { useRouter } from "next/navigation";
import { getToken } from "@/hooks/auth"; // Import getToken

// Zod schema for form validation
const formSchema = z.object({
  diagnosis_id: z.string().min(1, "Diagnosis ID is required"),
  final_diagnosis: z.string().min(1, "Final diagnosis is required"),
});

type FinishDiagnosisButtonProps = {
  className?: string;
  diagnosisId: string;
};

export const FinishDiagnosisButton: React.FC<FinishDiagnosisButtonProps> = ({
  className,
  diagnosisId,
}) => {
  const [alertInfo, setAlertInfo] = useState<{
    type: "success" | "error";
    message: string;
  } | null>(null);
  const router = useRouter();

  // Setup react-hook-form
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      diagnosis_id: diagnosisId,
      final_diagnosis: "",
    },
  });

  // Handle form submission
  const onSubmit = async (data: z.infer<typeof formSchema>) => {
    try {
      const token = getToken(); // Retrieve the token
      if (!token) {
        throw new Error("No token found. User is not authenticated.");
      }

      const response = await axios.post(
        "http://127.0.0.1:5000/api/update_final_diagnosis",
        data,
        {
          headers: {
            Authorization: `Bearer ${token}`, // Include the token
          },
        }
      );
      console.log(response);

      // Show success toast and alert message
      toast.success("Final diagnosis updated successfully!");
      setAlertInfo({
        type: "success",
        message: "Final diagnosis updated successfully!",
      });

      // Redirect after success
      setTimeout(() => {
        router.replace("/doctor/check-ups/active");
      }, 2000);
    } catch (error) {
      console.log("Error:", error);

      // Extract error message if available
      const errorMessage = axios.isAxiosError(error)
        ? error.response?.data?.error || "Failed to update final diagnosis."
        : "An unexpected error occurred.";

      // Show error toast and alert message
      toast.error(errorMessage);
      setAlertInfo({ type: "error", message: errorMessage });
    }
  };

  return (
    <div className={className}>
      <Dialog>
        <DialogTrigger asChild>
          <Button className="bg-cyan-600">
            <MessageCircleX className="mr-2 h-4 w-4" /> Finish Diagnosis
          </Button>
        </DialogTrigger>
        <DialogContent className="sm:max-w-[500px]">
          <DialogHeader>
            <DialogTitle>Finish Diagnosis</DialogTitle>
            <DialogDescription>
              Enter the final diagnosis. Click submit when you&apos;re done.
            </DialogDescription>
          </DialogHeader>
          {alertInfo && (
            <Alert
              variant={alertInfo.type === "success" ? "default" : "destructive"}
              className={`mb-6 ${
                alertInfo.type === "success"
                  ? "bg-green-100 text-green-800"
                  : ""
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
              <FormField
                control={form.control}
                name="diagnosis_id"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Diagnosis ID</FormLabel>
                    <FormControl>
                      <Input {...field} value={diagnosisId} disabled />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <FormField
                control={form.control}
                name="final_diagnosis"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Final Diagnosis</FormLabel>
                    <FormControl>
                      <Textarea
                        placeholder="Enter the final diagnosis"
                        className="min-h-[100px]"
                        {...field}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <DialogFooter>
                <Button type="submit">Submit</Button>
              </DialogFooter>
            </form>
          </Form>
        </DialogContent>
      </Dialog>
    </div>
  );
};
