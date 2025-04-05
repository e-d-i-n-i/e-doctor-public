import "../../globals.css";
import { Background } from "@/components/backgrounds";
import { Nav } from "@/components/nav";
import { Suspense } from "react"; // Import Suspense
import LoadingSpinner from "@/components/loading-spinner"; // Import your LoadingSpinner component

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <div className="px-4 xl:px-0 font-expose">
      <Nav />
      <Suspense fallback={<LoadingSpinner />}>{children} </Suspense>
      <Background />
    </div>
  );
}
