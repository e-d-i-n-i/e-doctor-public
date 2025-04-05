import * as Craft from "@/components/craft";
import { Main } from "@/components/craft";
// import { BeforeAfter } from "@/components/site/before-after";
import { ChatBot } from "@/components/site/chat-bot";
import CTA from "@/components/site/cta-section";
import { Faq } from "@/components/site/faq-section";
import { Features } from "@/components/site/feature-section";
import Hero from "@/components/site/hero";
import { Technologies } from "@/components/site/technologies";
import { Testimonials } from "@/components/site/testimonial-section";

export default function Home() {
  return (
    <Main>
      <Craft.Section className="flex flex-col items-center gap-12 p-2 py-12 md:p-0">
        <Hero />
        <Technologies />
        <Features />
        {/* <BeforeAfter {...beforeAfterData} /> */}
        <Testimonials />
        <Faq />
        <CTA />
        <ChatBot />
      </Craft.Section>
    </Main>
  );
}

// const beforeAfterData = {
//   before: {
//     title: "Current Healthcare System Challenges in Ethiopia",
//     items: [
//       "Reliance on individual doctor expertise leading to inconsistent diagnostic accuracy",
//       "Fragmented patient data management with manual record-keeping",
//       "Limited access to advanced diagnostic tools and AI-powered decision support systems",
//       "Inability to integrate cutting-edge medical research into daily practice",
//       "High risk of misdiagnosis and delayed treatment due to time constraints",
//     ],
//   },
//   after: {
//     title: "E-DOCTOR: A Transformative AI-Driven Healthcare Solution",
//     items: [
//       "AI-powered diagnostic tools for timely disease identification",
//       "Centralized patient data management system for holistic and secure record-keeping",
//       "Evidence-based treatment recommendations and drug interaction alerts",
//       "Integration of the latest medical research and guidelines into clinical practice",
//       "Scalable and affordable solutions for rural and underserved healthcare facilities",
//       "Real-time decision support for complex cases, reducing diagnostic errors",
//       "Improved patient safety and outcomes through proactive and personalized care",
//     ],
//   },
// };
