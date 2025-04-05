import { useState } from "react";
import axios from "axios";
import { useFieldArray, useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { z } from "zod";
import {
  Plus,
  Trash2,
  MessageCircleQuestion,
  ChevronLeft,
  ChevronRight,
} from "lucide-react";
import { toast } from "sonner"; // Import sonner toast
import { Button } from "@/components/ui/button";
import { Textarea } from "@/components/ui/textarea";
import { Checkbox } from "@/components/ui/checkbox";
import {
  Select,
  SelectTrigger,
  SelectValue,
  SelectContent,
  SelectItem,
} from "@/components/ui/select";
import {
  Dialog,
  DialogTrigger,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogDescription,
  DialogFooter,
} from "@/components/ui/dialog";
import {
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@/components/ui/carousel";

// Zod schema for a single question
const followUpQuestionSchema = z.object({
  parent_id: z.string().nullable(),
  category: z.string().min(1, "Category is required"),
  question: z.string().min(1, "Question is required"),
  answer: z.string().nullable(),
  is_required: z.boolean(),
  context_id: z.string().min(1, "Context ID is required"),
  priority_level: z
    .number()
    .min(1)
    .max(5, "Priority level must be between 1 and 5"),
  status: z.string().optional(),
});

// Zod schema for the entire form (array of questions)
const formSchema = z.object({
  questions: z
    .array(followUpQuestionSchema)
    .min(1, "At least one question is required"),
});

type FollowUpQuestion = z.infer<typeof followUpQuestionSchema>;

type DrawerFormProps = {
  className?: string;
  context_id: string;
};

const initialQuestion: FollowUpQuestion = {
  parent_id: null,
  category: "",
  question: "",
  answer: null,
  is_required: false,
  context_id: "",
  priority_level: 2,
  status: "pending",
};

const categories = [
  { value: "general", label: "General" },
  { value: "technical", label: "Technical" },
  { value: "administrative", label: "Administrative" },
];

export const AskFollowUpQuestionDrawer: React.FC<DrawerFormProps> = ({
  className,
  context_id,
}) => {
  const [isDialogOpen, setDialogOpen] = useState(false);

  const form = useForm({
    resolver: zodResolver(formSchema),
    defaultValues: {
      questions: [{ ...initialQuestion, context_id }],
    },
  });

  const { fields, append, remove } = useFieldArray({
    control: form.control,
    name: "questions",
  });

  const handleDialogOpen = () => {
    setDialogOpen(true);
  };

  const handleDialogClose = () => {
    setDialogOpen(false);
    form.reset({
      questions: [{ ...initialQuestion, context_id }],
    });
  };

  const onSubmit = async (data: z.infer<typeof formSchema>) => {
    try {
      await axios.post(
        "http://127.0.0.1:5000/api/follow-up-questions/bulk",
        data.questions
      );

      toast.success("Follow-up questions added successfully!"); // Use sonner toast

      form.reset({
        questions: [{ ...initialQuestion, context_id }],
      });

      setTimeout(handleDialogClose, 3000);
    } catch {
      toast.error("Failed to add follow-up questions."); // Use sonner toast
    }
  };

  return (
    <div className={`${className}`}>
      <Dialog open={isDialogOpen} onOpenChange={setDialogOpen}>
        <DialogTrigger asChild>
          <Button
            onClick={handleDialogOpen}
            className="flex items-center gap-2 bg-pink-600 text-white hover:bg-pink-700"
          >
            <MessageCircleQuestion className="h-5 w-5" />
            Ask Follow-up Questions
          </Button>
        </DialogTrigger>

        <DialogContent className="sm:max-w-2xl">
          <DialogHeader>
            <DialogTitle>Add Follow-up Questions</DialogTitle>
            <DialogDescription>
              Enter details for multiple follow-up questions.
            </DialogDescription>
          </DialogHeader>

          <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-6">
            <Carousel>
              <CarouselContent>
                {fields.map((field, index) => (
                  <CarouselItem key={field.id}>
                    <div className="space-y-4 p-4 border border-gray-200 rounded-lg shadow-sm">
                      <div className="flex justify-between items-center">
                        <h3 className="text-lg font-semibold">
                          Question #{index + 1}
                        </h3>
                        <Button
                          type="button"
                          variant="ghost"
                          size="sm"
                          onClick={() => remove(index)}
                        >
                          <Trash2 className="h-5 w-5 text-red-500" />
                        </Button>
                      </div>

                      <div className="space-y-4">
                        {/* Category Field */}
                        <div>
                          <label className="block text-sm font-medium text-gray-700">
                            Category
                          </label>
                          <Select
                            {...form.register(`questions.${index}.category`)}
                            onValueChange={(value) =>
                              form.setValue(
                                `questions.${index}.category`,
                                value
                              )
                            }
                          >
                            <SelectTrigger>
                              <SelectValue placeholder="Select a category" />
                            </SelectTrigger>
                            <SelectContent>
                              {categories.map((cat) => (
                                <SelectItem key={cat.value} value={cat.value}>
                                  {cat.label}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                          {form.formState.errors.questions?.[index]
                            ?.category && (
                            <p className="text-sm text-red-500">
                              {
                                form.formState.errors.questions[index].category
                                  .message
                              }
                            </p>
                          )}
                        </div>

                        {/* Question Field */}
                        <div>
                          <label className="block text-sm font-medium text-gray-700">
                            Question
                          </label>
                          <Textarea
                            {...form.register(`questions.${index}.question`)}
                            placeholder="Enter your question"
                          />
                          {form.formState.errors.questions?.[index]
                            ?.question && (
                            <p className="text-sm text-red-500">
                              {
                                form.formState.errors.questions[index].question
                                  .message
                              }
                            </p>
                          )}
                        </div>

                        {/* Priority Level Field */}
                        <div>
                          <label className="block text-sm font-medium text-gray-700">
                            Priority Level
                          </label>
                          <Select
                            {...form.register(
                              `questions.${index}.priority_level`
                            )}
                            onValueChange={(value) =>
                              form.setValue(
                                `questions.${index}.priority_level`,
                                Number(value)
                              )
                            }
                          >
                            <SelectTrigger>
                              <SelectValue placeholder="Select Priority Level" />
                            </SelectTrigger>
                            <SelectContent>
                              {[1, 2, 3, 4, 5].map((priority) => (
                                <SelectItem
                                  key={priority}
                                  value={priority.toString()}
                                >
                                  Priority {priority}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                          {form.formState.errors.questions?.[index]
                            ?.priority_level && (
                            <p className="text-sm text-red-500">
                              {
                                form.formState.errors.questions[index]
                                  .priority_level.message
                              }
                            </p>
                          )}
                        </div>

                        {/* Required Field */}
                        <div>
                          <label className="flex items-center space-x-2">
                            <Checkbox
                              {...form.register(
                                `questions.${index}.is_required`
                              )}
                            />
                            <span className="text-sm text-gray-700">
                              Required?
                            </span>
                          </label>
                        </div>
                      </div>
                    </div>
                  </CarouselItem>
                ))}
              </CarouselContent>

              <CarouselPrevious>
                <ChevronLeft className="h-4 w-4" />
              </CarouselPrevious>
              <CarouselNext>
                <ChevronRight className="h-4 w-4" />
              </CarouselNext>
            </Carousel>

            <Button
              type="button"
              variant="outline"
              onClick={() => append({ ...initialQuestion, context_id })}
              className="w-full"
            >
              <Plus className="h-5 w-5 mr-2" />
              Add Another Question
            </Button>

            <DialogFooter>
              <Button type="submit" className="w-full">
                Submit Questions
              </Button>
            </DialogFooter>
          </form>
        </DialogContent>
      </Dialog>
    </div>
  );
};
