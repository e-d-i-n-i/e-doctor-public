import type { Metadata } from "next";
import "./globals.css";
import { ThemeProvider } from "@/components/site/theme/theme-provider";
import { Toaster } from "@/components/ui/sonner";

export const metadata: Metadata = {
  metadataBase: new URL("https://edoctor.vercel.app"),
  title: "e-doctor",
  description:
    "AI-driven medical diagnosis system leveraging advanced AI models and RAG technology for precise, efficient healthcare solutions.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className={`font-sans antialiased`} suppressHydrationWarning={true}>
        <ThemeProvider
          attribute="class"
          defaultTheme="system"
          enableSystem
          disableTransitionOnChange
        >
          {children} <Toaster position="top-right" richColors />
        </ThemeProvider>
      </body>
    </html>
  );
}
