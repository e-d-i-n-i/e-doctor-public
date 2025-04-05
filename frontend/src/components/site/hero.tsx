// React and Next.js imports
import Image from "next/image";
import Link from "next/link";

// Third-party library imports
import Balancer from "react-wrap-balancer";
import { ArrowRight } from "lucide-react";

// Local component imports
import { Section, Container } from "@/components/craft";
import { Button } from "../ui/button";

// Asset imports
import Placeholder from "@/assets/img/ai-medic.webp";
import { Wrapper } from "../wrapper";

const Hero = () => {
  return (
    <Section className="py-12 md:py-20">
      <Container>
        <div className="flex flex-col items-center text-center">
          <Button
            asChild
            className="mb-6 w-fit"
            size={"sm"}
            variant={"outline"}
          >
            <Link className="not-prose" href="/login">
              Let&apos;s get started <ArrowRight className="ml-2 w-4" />
            </Link>
          </Button>
          <h1 className="text-3xl md:text-4xl lg:text-5xl mb-4 font-expose max-w-3xl">
            <Balancer>
              AI-Driven Medical Diagnosis & Prescription System
            </Balancer>
          </h1>
          <h3 className="text-muted-foreground text-lg md:text-xl max-w-2xl">
            <Balancer>
              Leveraging patient diagnostics and history, this AI-powered system
              creates reliable, personalized prescriptions. Advanced AI models
              analyze data to improve outcomes and decision-making.
            </Balancer>
          </h3>
          <div className="mt-10 w-full max-w-3xl">
            <Wrapper title="">
              <Image
                src={Placeholder || "/placeholder.svg"}
                alt="AI Image"
                className="w-full h-auto object-cover rounded-lg"
                width={1200}
                height={675}
                priority
              />
            </Wrapper>
          </div>
        </div>
      </Container>
    </Section>
  );
};

export default Hero;
