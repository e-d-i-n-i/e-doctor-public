"use client";
import { useState, useRef, useEffect, Suspense, lazy, use } from "react";
import MessageInput from "@/components/chat/MessageInput";
import LoadingSpinner from "@/components/loading-spinner";
import { ChevronUp, ChevronDown } from "lucide-react"; // Import icons for the toggle button
import { AuthProvider } from "@/context/AuthProvider";
import PrivateRoute from "@/context/PrivateRoute";

// Lazy load the ChatMessage component
const ChatMessage = lazy(() => import("@/components/chat/ChatMessage"));

type Message = {
  role: "Human" | "AI";
  content: string;
  reasoning: string;
  timestamp: string;
};

const FLASK_BACKEND_URL =
  process.env.NEXT_PUBLIC_FLASK_BACKEND_URL || "http://127.0.0.1:5000";

type ChatBoxProps = {
  params: Promise<{ id: string }>; // `params` is now a Promise
};

const ChatBox: React.FC<ChatBoxProps> = ({ params }) => {
  const [chatHistory, setChatHistory] = useState<Message[]>([]);
  const [visibleMessages, setVisibleMessages] = useState<Message[]>([]); // Track visible messages
  const [userQuery, setUserQuery] = useState<string>("");
  const [error, setError] = useState<string | null>(null);
  const [isLoading, setIsLoading] = useState(false);
  const [isDownloading, setIsDownloading] = useState(true); // Track downloading state
  const messageEndRef = useRef<HTMLDivElement | null>(null);
  const chatContainerRef = useRef<HTMLDivElement | null>(null);
  const [open, setOpen] = useState(false);
  const [value, setValue] = useState("");
  const [isInputExpanded, setIsInputExpanded] = useState(true); // Track input section state

  // Use the `use` hook to unwrap the params Promise
  const { id: threadId } = use(params);

  const scrollToBottom = () => {
    if (messageEndRef.current) {
      messageEndRef.current.scrollIntoView({ behavior: "smooth" });
    }
  };

  useEffect(() => {
    scrollToBottom();
  }, [visibleMessages]); // Scroll when new messages are added

  useEffect(() => {
    if (threadId) {
      loadInitialChatHistory(threadId);
    }
  }, [threadId]);

  const loadInitialChatHistory = async (threadId: string) => {
    try {
      setIsDownloading(true); // Start downloading
      const response = await fetch(
        `${FLASK_BACKEND_URL}/load-chat/${threadId}?limit=10`
      );
      if (response.ok) {
        const data = await response.json();
        setChatHistory(data.chat_history);
        setIsDownloading(false); // Finish downloading
      } else {
        setError("Failed to load chat history. Please try again later.");
      }
    } catch (err) {
      setError("Failed to load chat history. Please check your connection.");
      console.error(err);
    }
  };

  // Render messages one by one with a delay
  useEffect(() => {
    if (chatHistory.length > 0 && visibleMessages.length < chatHistory.length) {
      const timer = setTimeout(() => {
        setVisibleMessages((prev) => {
          const nextMessage = chatHistory[prev.length];
          if (nextMessage) {
            return [...prev, nextMessage];
          }
          return prev;
        });
      }, 500); // Delay between messages (500ms)

      return () => clearTimeout(timer);
    }
  }, [chatHistory, visibleMessages]);

  const sendMessageToBackend = async (message: string) => {
    try {
      const response = await fetch(`${FLASK_BACKEND_URL}/chat`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          message,
          thread_id: threadId,
        }),
      });

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(errorData.error || "An error occurred.");
      }

      return await response.json();
    } catch (err) {
      throw err;
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!userQuery.trim() || !threadId) return;

    const newMessage: Message = {
      role: "Human",
      content: userQuery,
      reasoning: "USER QUERY",
      timestamp: new Date().toISOString(),
    };

    // Add the new message to both chatHistory and visibleMessages
    setChatHistory((prev) => [...prev, newMessage]);
    setVisibleMessages((prev) => [...prev, newMessage]);
    setUserQuery("");
    setIsLoading(true);

    try {
      const { response: aiResponse, reasoning } = await sendMessageToBackend(
        userQuery
      );
      const newAIMessage: Message = {
        role: "AI",
        content: aiResponse,
        reasoning,
        timestamp: new Date().toISOString(),
      };

      // Add the AI response to both chatHistory and visibleMessages
      setChatHistory((prev) => [...prev, newAIMessage]);
      setVisibleMessages((prev) => [...prev, newAIMessage]);
      setError(null);
    } catch (err) {
      setError(
        err instanceof Error
          ? err.message
          : "Failed to communicate with the server."
      );
    } finally {
      setIsLoading(false);
    }
  };

  const handleComboBoxSelect = async (selectedValue: string) => {
    setValue(selectedValue);
    setOpen(false);

    const newMessage: Message = {
      role: "Human",
      content: selectedValue,
      reasoning: "USER QUERY",
      timestamp: new Date().toISOString(),
    };

    // Add the new message to both chatHistory and visibleMessages
    setChatHistory((prev) => [...prev, newMessage]);
    setVisibleMessages((prev) => [...prev, newMessage]);
    setIsLoading(true);

    try {
      const { response: aiResponse, reasoning } = await sendMessageToBackend(
        selectedValue
      );
      const newAIMessage: Message = {
        role: "AI",
        content: aiResponse,
        reasoning,
        timestamp: new Date().toISOString(),
      };

      // Add the AI response to both chatHistory and visibleMessages
      setChatHistory((prev) => [...prev, newAIMessage]);
      setVisibleMessages((prev) => [...prev, newAIMessage]);
      setError(null);
    } catch (err) {
      setError(
        err instanceof Error
          ? err.message
          : "Failed to communicate with the server."
      );
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <AuthProvider>
      <PrivateRoute requiredRole="doctor">
        <div className="flex flex-col h-screen">
          <div className="flex-1 overflow-auto mt-2" ref={chatContainerRef}>
            <div className="mt-16">
              <div className="relative flex-1 overflow-auto p-4">
                <div className="space-y-4 pb-20">
                  {isDownloading && (
                    <div className="flex justify-center items-center h-[60vh]">
                      <LoadingSpinner />{" "}
                      {/* Show loading spinner while downloading */}
                    </div>
                  )}
                  {!isDownloading && chatHistory.length === 0 && !isLoading && (
                    <div className="flex h-[60vh] items-center justify-center text-muted-foreground">
                      No messages yet. Start the conversation!
                    </div>
                  )}
                  {!isDownloading && (
                    <Suspense fallback={<LoadingSpinner />}>
                      {visibleMessages
                        .sort((a, b) => {
                          const timestampComparison =
                            new Date(a.timestamp).getTime() -
                            new Date(b.timestamp).getTime();

                          // If timestamps are the same, prioritize Human messages
                          if (timestampComparison === 0) {
                            return a.role === "Human" ? -1 : 1;
                          }

                          return timestampComparison;
                        })
                        .map((message) => (
                          <ChatMessage
                            key={`${message.timestamp}-${
                              message.role
                            }-${message.content.substring(0, 10)}`} // Unique key
                            message={message}
                            threadId={threadId}
                          />
                        ))}
                    </Suspense>
                  )}
                  <div ref={messageEndRef} />
                </div>
              </div>

              {/* Collapsible MessageInput Section */}
              <div
                className={`sticky bottom-0 w-full bg-background/80 backdrop-blur-sm border-t transition-all duration-300 ease-in-out ${
                  isInputExpanded ? "h-auto" : "h-12" // Adjust height based on state
                }`}
              >
                {/* Toggle Button */}
                <div className="flex justify-center w-full">
                  <button
                    type="button"
                    className="flex items-center justify-center w-full h-12 bg-background/80 hover:bg-background/90 transition-colors duration-200 ease-in-out"
                    onClick={() => setIsInputExpanded((prev) => !prev)}
                  >
                    {isInputExpanded ? (
                      <ChevronDown size={20} className="stroke-foreground" />
                    ) : (
                      <ChevronUp size={20} className="stroke-foreground" />
                    )}
                  </button>
                </div>

                {/* MessageInput (visible only when expanded) */}
                {isInputExpanded && (
                  <div className="flex justify-center w-full">
                    <MessageInput
                      userQuery={userQuery}
                      setUserQuery={setUserQuery}
                      handleSubmit={handleSubmit}
                      isLoading={isLoading}
                      error={error}
                      open={open}
                      setOpen={setOpen}
                      value={value}
                      setValue={setValue}
                      handleComboBoxSelect={handleComboBoxSelect}
                      diagnosis_id={threadId}
                    />
                  </div>
                )}
              </div>
            </div>
          </div>
        </div>
      </PrivateRoute>{" "}
    </AuthProvider>
  );
};

export default ChatBox;
