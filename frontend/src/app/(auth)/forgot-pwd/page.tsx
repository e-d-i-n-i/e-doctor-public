// React and Next.js imports
import Image from "next/image";
import Link from "next/link";

// UI component imports
import * as Craft from "@/components/craft";
import { Button } from "@/components/ui/button";

// Asset imports
import Placeholder from "@/assets/img/forgot-password-concept-illustration.avif";
import { MoveRight } from "lucide-react";

const ForgotPasswordPage = () => {
  return (
    <Craft.Section>
      <Craft.Container className="grid items-stretch md:grid-cols-2 md:gap-12">
        {/* Image Container */}
        <div className="not-prose relative flex h-96 overflow-hidden rounded-lg border">
          <Image
            src={Placeholder}
            alt="Forgot Password Illustration"
            fill // Ensures the image fills the container
            className="object-cover" // Maintains aspect ratio
            priority // Improves loading if the image is above the fold
          />
        </div>

        {/* Content */}
        <div className="flex flex-col gap-6 py-8">
          <h3 className="!my-0 font-bold text-xl">
            Forgot Your Password? Don&apos;t Worry, We&apos;ve Got You Covered!
          </h3>
          <p className="font-light leading-[1.4] opacity-70">
            Accidents happen, and forgetting your password is completely normal.
            Whether you&apos;re a patient or part of an organization, we&apos;re
            here to help you get back on track.
          </p>
          <ul className="font-light leading-[1.4] opacity-70 flex flex-col gap-6">
            <li>
              <strong className="font-semibold">For Patients:</strong> Simply
              head to the help desk and ask one of our friendly nurses to assist
              you with recovering your password.
            </li>
            <li>
              <strong className="font-semibold">For Organization Users:</strong>{" "}
              Please reach out to your supervisor, who will guide you through
              the password recovery process.
            </li>
          </ul>
          <p className="font-light leading-[1.4] opacity-70">
            We&apos;re committed to making sure you regain access quickly and
            easily—because everyone deserves a hassle-free experience.
          </p>
          <div className="not-prose flex items-center gap-2">
            <Button className="w-fit" asChild>
              <Link href="/login">Try Again?</Link>
            </Button>
            <Button className="w-fit" variant="link" asChild>
              <Link href="/">
                Okay <MoveRight />
              </Link>
            </Button>
          </div>
        </div>
      </Craft.Container>
    </Craft.Section>
  );
};

export default ForgotPasswordPage;
