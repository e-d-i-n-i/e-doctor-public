import {
  TooltipProvider,
  Tooltip,
  TooltipTrigger,
  TooltipContent,
} from "@/components/ui/tooltip";
import Image from "next/image";

// Import SVGs
import DeepSeek from "@/assets/svg/icons/deepseek-color.svg";
import Llama from "@/assets/svg/icons/meta-color.svg";
import Python from "@/assets/svg/icons/python-seeklogo.svg";
import MySQL from "@/assets/svg/icons/mysqltwo.svg";
import Mistral from "@/assets/svg/icons/mistral-color.svg";
import Pydantic from "@/assets/svg/icons/pydantic.svg";
import Groq from "@/assets/svg/icons/groq-icon-seeklogo.svg";
import OpenAI from "@/assets/svg/icons/openai.svg";
import LangChain from "@/assets/svg/icons/langchain-color.svg";
import ChromaDb from "@/assets/svg/icons/chroma-seeklogo.svg";
import JWT from "@/assets/svg/icons/jwt-icon.svg";
import NextJs from "@/assets/svg/icons/nextjs.svg";
import TailwindCSS from "@/assets/svg/icons/tailwindcss.svg";
import ReactLogo from "@/assets/svg/icons/react.svg";
import TypeScript from "@/assets/svg/icons/file-type-typescript-official.svg";
import Shadcn from "@/assets/svg/icons/shadcnui.svg";

// Define the technologies array
const technologies = [
  { src: NextJs, alt: "Next.js Logo", tooltip: "Next.js" },
  { src: ReactLogo, alt: "React Logo", tooltip: "React" },
  { src: TailwindCSS, alt: "Tailwind CSS Logo", tooltip: "Tailwind CSS" },
  { src: Shadcn, alt: "shadcn/ui Logo", tooltip: "shadcn/ui" },
  { src: TypeScript, alt: "TypeScript Logo", tooltip: "TypeScript" },
  { src: DeepSeek, alt: "DeepSeek Logo", tooltip: "DeepSeek" },
  { src: Python, alt: "Python Logo", tooltip: "Python" },
  { src: Groq, alt: "Groq Logo", tooltip: "Groq" },
  { src: Pydantic, alt: "Pydantic Logo", tooltip: "Pydantic" },
  { src: LangChain, alt: "LangChain Logo", tooltip: "LangChain" },
  { src: Mistral, alt: "Mistral Logo", tooltip: "Mistral" },
  { src: OpenAI, alt: "OpenAI Logo", tooltip: "OpenAI" },
  { src: MySQL, alt: "MySQL Logo", tooltip: "MySQL" },
  { src: Llama, alt: "Meta Llama Logo", tooltip: "Meta Llama" },
  { src: ChromaDb, alt: "Chroma Vector DB Logo", tooltip: "Chroma Vector DB" },
  { src: JWT, alt: "JWT Logo", tooltip: "JSON Web Token" },
];

export function Technologies() {
  return (
    <section className="container flex flex-col items-center gap-10 py-24">
      <h2 className="font-heading text-3xl font-semibold tracking-tight sm:text-4xl text-balance">
        Tech Stack
      </h2>
      <p className="max-w-2xl text-center text-lg text-muted-foreground">
        Leveraging cutting-edge technologies to create a powerful, flexible, and
        efficient AI-driven development ecosystem.
      </p>
      <div className="grid grid-cols-8 gap-6 sm:gap-12">
        <TooltipProvider>
          {technologies.map((tech, index) => (
            <Tooltip key={index} delayDuration={100}>
              <TooltipTrigger asChild>
                <Image
                  src={tech.src}
                  alt={tech.alt}
                  className="size-10 cursor-pointer text-foreground sm:size-16 dark:invert"
                />
              </TooltipTrigger>
              <TooltipContent side="bottom" sideOffset={8}>
                <p>{tech.tooltip}</p>
              </TooltipContent>
            </Tooltip>
          ))}
        </TooltipProvider>
      </div>
    </section>
  );
}
