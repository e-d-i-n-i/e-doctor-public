"use client";

import * as React from "react";
import { Button } from "@/components/ui/button";
import { RefreshCw } from "lucide-react";
import {
  Tooltip,
  TooltipContent,
  TooltipProvider,
  TooltipTrigger,
} from "@/components/ui/tooltip";

interface FloatingRefreshButtonProps {
  onRefresh: () => void;
  isLoading?: boolean; // Add a loading state
}

export function FloatingRefreshButton({
  onRefresh,
  isLoading = false,
}: FloatingRefreshButtonProps) {
  return (
    <div className="fixed bottom-6 right-6 z-50">
      <TooltipProvider>
        <Tooltip>
          <TooltipTrigger asChild>
            <Button
              onClick={onRefresh}
              variant="outline"
              size="icon"
              className="rounded-full shadow-lg dark:bg-primary"
              disabled={isLoading} // Disable button when loading
            >
              <RefreshCw
                className={`h-4 w-4 ${isLoading ? "animate-spin" : ""}`} // Add spin animation when loading
              />
            </Button>
          </TooltipTrigger>
          <TooltipContent>
            <p>Refresh</p>
          </TooltipContent>
        </Tooltip>
      </TooltipProvider>
    </div>
  );
}
