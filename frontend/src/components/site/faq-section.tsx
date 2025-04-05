import { Accordion } from "@/components/ui/accordion";
import { FaqItem } from "@/components/site/faq-item";

export function Faq() {
  return (
    <section className="container flex flex-col items-center gap-6 py-24 sm:gap-7">
      <div className="flex flex-col gap-3">
        <span className="font-bold uppercase text-primary text-center">
          FAQ
        </span>
        <h2 className="font-heading text-3xl font-semibold tracking-tight sm:text-4xl text-balance text-center">
          Frequently Asked Questions
        </h2>
      </div>
      <p className="text-lg text-muted-foreground text-balance max-w-lg text-center">
        Have more questions? Reach out to us anytime.
      </p>
      <Accordion
        type="single"
        collapsible
        className="mt-6 w-full divide-y max-w-3xl"
      >
        <FaqItem
          answer="E-DOCTOR is an AI-powered platform designed to improve diagnostic accuracy, streamline patient data management, and provide evidence-based treatment recommendations. It’s tailored to address the unique challenges of healthcare delivery in Ethiopia."
          question="What is the E-DOCTOR Project?"
        />
        <FaqItem
          answer="E-DOCTOR uses advanced AI algorithms to analyze patient symptoms, medical history, and test results. It provides differential diagnoses, treatment recommendations, and alerts for critical conditions, helping doctors make more informed decisions."
          question="How does E-DOCTOR improve diagnostic accuracy?"
        />
        <FaqItem
          answer="Yes! E-DOCTOR is designed to be scalable and accessible, even for smaller healthcare facilities in rural areas. It works with limited infrastructure and is optimized for resource-constrained settings."
          question="Can E-DOCTOR be used in rural healthcare facilities?"
        />
        <FaqItem
          answer="E-DOCTOR centralizes patient records, lab results, and imaging data in one secure platform. It ensures seamless access to complete medical histories."
          question="How does E-DOCTOR handle patient data?"
        />
      </Accordion>
    </section>
  );
}
