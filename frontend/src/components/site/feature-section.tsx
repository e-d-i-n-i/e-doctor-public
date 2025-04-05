import {
  Cpu,
  Database,
  Code,
  Shield,
  Zap,
  Search,
  Globe,
  LayoutGrid,
} from "lucide-react";

import { FeatureHoverCard } from "@/components/site/feature-hover-card";

export function Features() {
  return (
    <section className="container flex flex-col items-center gap-6 py-24 sm:gap-7">
      <div className="flex flex-col gap-3">
        <span className="font-bold uppercase text-primary text-center">
          Features
        </span>
        <h2 className="font-heading text-3xl font-semibold tracking-tight sm:text-4xl text-balance text-center">
          Advanced Medical AI Platform
        </h2>
      </div>
      <p className="text-lg text-muted-foreground text-balance max-w-xl text-center">
        Our platform leverages cutting-edge AI and data technologies to provide
        fast, secure, and medical insights.
      </p>
      <div className="relative z-10 mx-auto grid max-w-7xl grid-cols-1 py-10 md:grid-cols-2 lg:grid-cols-4">
        <FeatureHoverCard
          icon={Cpu}
          title="Pretrained AI Models"
          description="Utilizes state-of-the-art pretrained AI models for medical data analysis."
          className="lg:border-l"
        />
        <FeatureHoverCard
          icon={Database}
          title="RAG Implementation"
          description="Retrieval-Augmented Generation (RAG) for accessing and processing medical data."
        />
        <FeatureHoverCard
          icon={Code}
          title="Modular Programming"
          description="Built with modular programming for easy customization and scalability."
        />
        <FeatureHoverCard
          icon={Shield}
          title="JWT Authentication"
          description="Secure JWT authentication to ensure data privacy and security."
        />
        <FeatureHoverCard
          icon={Zap}
          title="Fast Performance"
          description="Optimized for fast performance with efficient data retrieval and processing."
          className="lg:border-l lg:border-b-0 hover:bg-gradient-to-b"
        />
        <FeatureHoverCard
          icon={Search}
          title="Web Search"
          description="Integrated web search to fetch the latest medical information."
          className="lg:border-b-0 hover:bg-gradient-to-b"
        />
        <FeatureHoverCard
          icon={Globe}
          title="Web Scraping"
          description="Collects medical data from trusted websites using advanced web scraping techniques."
          className="lg:border-b-0 hover:bg-gradient-to-b"
        />
        <FeatureHoverCard
          icon={LayoutGrid}
          title="Chroma DB Integration"
          description="Stores big data in Chroma DB vector database for faster and efficient retrieval."
          className="lg:border-b-0 hover:bg-gradient-to-b"
        />
      </div>
    </section>
  );
}
