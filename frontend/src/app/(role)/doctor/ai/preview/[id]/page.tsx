"use client";
import { useState, useRef, useEffect, Suspense, use } from "react";
import { Card, CardContent } from "@/components/ui/card";
import { AlertCircle } from "lucide-react";
import ChatMessage from "@/components/chat/ChatMessage";
import LoadingSpinner from "@/components/loading-spinner";
import { AuthProvider } from "@/context/AuthProvider";
import PrivateRoute from "@/context/PrivateRoute";

const FLASK_BACKEND_URL =
  process.env.NEXT_PUBLIC_FLASK_BACKEND_URL || "http://127.0.0.1:5000";

type ChatBoxProps = {
  params: Promise<{ id: string }>;
};

// Define the Message type to match the expected type in ChatMessage
type Message = {
  role: "Human" | "AI"; // Ensure role is either "Human" or "AI"
  content: string;
  timestamp: string;
  reasoning: string; // Add the reasoning property
};

const ChatBox: React.FC<ChatBoxProps> = ({ params }) => {
  const [chatHistory, setChatHistory] = useState<Message[]>([]);
  const [visibleMessages, setVisibleMessages] = useState<Message[]>([]);
  const [isLoadingMessages, setIsLoadingMessages] = useState(true);
  const [isDownloading, setIsDownloading] = useState(true);
  const messageEndRef = useRef<HTMLDivElement | null>(null);
  const chatContainerRef = useRef<HTMLDivElement | null>(null);

  const { id: threadId } = use(params);

  const scrollToBottom = () => {
    if (messageEndRef.current) {
      messageEndRef.current.scrollIntoView({ behavior: "smooth" });
    }
  };

  useEffect(() => {
    scrollToBottom();
  }, [visibleMessages]);

  useEffect(() => {
    if (threadId) {
      loadInitialChatHistory(threadId);
    }
  }, [threadId]);

  const loadInitialChatHistory = async (threadId: string) => {
    try {
      setIsDownloading(true);
      const response = await fetch(
        `${FLASK_BACKEND_URL}/load-chat/${threadId}?limit=10`
      );
      if (response.ok) {
        const data = await response.json();
        setChatHistory(data.chat_history);
        setIsDownloading(false);
        setIsLoadingMessages(true);
      } else {
        console.error("Failed to load chat history. Please try again later.");
      }
    } catch {
      console.error(
        "Failed to load chat history. Please check your connection."
      );
    }
  };

  useEffect(() => {
    if (chatHistory.length > 0 && isLoadingMessages) {
      const timer = setTimeout(() => {
        setVisibleMessages((prev) => {
          const nextMessage = chatHistory[prev.length];
          if (nextMessage) {
            return [...prev, nextMessage];
          } else {
            setIsLoadingMessages(false);
            return prev;
          }
        });
      }, 500);

      return () => clearTimeout(timer);
    }
  }, [chatHistory, visibleMessages, isLoadingMessages]);

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
                      <LoadingSpinner />
                    </div>
                  )}
                  {!isDownloading && chatHistory.length === 0 && (
                    <div className="flex h-[60vh] items-center justify-center text-muted-foreground">
                      No messages found.
                    </div>
                  )}
                  {!isDownloading && (
                    <Suspense fallback={<div>Loading messages...</div>}>
                      {visibleMessages
                        .sort((a, b) => {
                          const timestampComparison =
                            new Date(a.timestamp).getTime() -
                            new Date(b.timestamp).getTime();

                          if (timestampComparison === 0) {
                            return a.role === "Human" ? -1 : 1;
                          }

                          return timestampComparison;
                        })
                        .map((message) => (
                          <ChatMessage
                            key={`${message.timestamp}-${
                              message.role
                            }-${message.content.substring(0, 10)}`}
                            message={message}
                            threadId={threadId}
                          />
                        ))}
                    </Suspense>
                  )}
                  {isLoadingMessages && !isDownloading && (
                    <div className="flex justify-center items-center h-[60vh]">
                      <LoadingSpinner />
                    </div>
                  )}
                  <div ref={messageEndRef} />
                </div>
              </div>

              <div className="sticky bottom-0 w-full p-4 bg-background/80 backdrop-blur-sm border-t">
                <Card className="w-full max-w-3xl mx-auto border-2 border-foreground">
                  <CardContent className="p-4">
                    <div className="flex items-center justify-center space-x-2 text-center">
                      <AlertCircle className="h-5 w-5 text-yellow-500" />
                      <h2 className="text-lg font-semibold">
                        This diagnosis has been concluded
                      </h2>
                    </div>
                    <p className="mt-2 text-center text-muted-foreground">
                      Please create a new instance or proceed with another
                      active patient case.
                    </p>
                  </CardContent>
                </Card>
              </div>
            </div>
          </div>
        </div>
      </PrivateRoute>
    </AuthProvider>
  );
};

export default ChatBox;
