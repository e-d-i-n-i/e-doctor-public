import { getToken } from "@/hooks/auth";
import { FollowUpQuestion } from "@/types/FollowupQuestions";

const API_BASE_URL = "http://127.0.0.1:5000/api";

const fetchFollowUpQuestions = async (
  endpoint: string,
  username: string
): Promise<FollowUpQuestion[]> => {
  try {
    const token = getToken();
    if (!token) {
      throw new Error(
        "Authentication error: No JWT token found. Please log in."
      );
    }

    const response = await fetch(
      `${API_BASE_URL}/${endpoint}?username=${username}`,
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
      }
    );

    if (!response.ok) {
      if (response.status === 404) {
        console.warn("No follow-up questions found for the given user.");
        return [];
      }
      throw new Error(
        `Request failed with status ${response.status}: ${response.statusText}`
      );
    }

    const data = await response.json();
    if (!Array.isArray(data)) {
      console.warn("Unexpected API response format. Expected an array.");
      return [];
    }

    return data.map((question: any) => ({
      follow_up_question_id: question.follow_up_question_id,
      category: question.category,
      question: question.question,
      answer: question.answer || null,
      is_required: question.is_required,
      priority_level: question.priority_level,
      created_at: question.created_at,
      updated_at: question.updated_at,
      status: question.status,
    })) as FollowUpQuestion[];
  } catch (error) {
    console.error("Error fetching follow-up questions:", error);
    return [];
  }
};

export const fetchPendingFollowUpQuestionsByUsername = async (
  username: string
) => fetchFollowUpQuestions("GetPendingFollowUpQuestions", username);

export const fetchAnsweredFollowUpQuestionsByUsername = async (
  username: string
) => fetchFollowUpQuestions("GetAnsweredFollowUpQuestions", username);
