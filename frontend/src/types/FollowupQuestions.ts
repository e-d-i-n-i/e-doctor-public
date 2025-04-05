export type FollowUpQuestion = {
  follow_up_question_id: string; // UUID
  category: string; // Category of the question (e.g., "Symptoms")
  question: string; // The actual question text
  answer: string | null; // Nullable, only present for answered questions
  is_required: number; // 1 for required, 0 for optional
  priority_level: number; // Priority level (e.g., 1 for high, 2 for medium, etc.)
  created_at: string; // ISO date string
  updated_at: string; // ISO date string
  status: "pending" | "answered" | "closed"; // Status of the question
};
