"use client";

import { useRouter } from "next/navigation";
import { Button } from "@/components/ui/button";

export function SubmitButton({ id }: { id: string }) {
  const router = useRouter();

  const handleSubmit = () => {
    router.push(`/labTech/laboratory/requests/submit/${id}`);
  };

  return (
    <Button onClick={handleSubmit} className="bg-primary">
      Submit Test Results
    </Button>
  );
}
