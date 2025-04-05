import LoadingSpinner from "@/components/loading-spinner";

export default function Loading() {
  return (
    <div className="flex items-center justify-center min-h-screen">
      <div className="text-center">
        <LoadingSpinner /> {/* Adjust the size here */}
        <p className="mt-4 text-lg font-semibold">Loading...</p>{" "}
        {/* Optional: Add a loading message */}
      </div>
    </div>
  );
}
