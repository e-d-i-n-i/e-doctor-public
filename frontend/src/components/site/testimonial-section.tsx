import { TestimonialCard } from "@/components/site/testimonial-card";
import placeholderImage from "@/assets/img/avatar.jpg";

export function Testimonials() {
  return (
    <section className="container flex flex-col items-center gap-6 py-24 sm:gap-7">
      <div className="flex flex-col gap-3">
        <span className="font-bold uppercase text-primary text-center">
          Testimonials
        </span>
        <h2 className="font-heading text-3xl font-semibold tracking-tight sm:text-4xl text-balance text-center">
          What our users say
        </h2>
      </div>
      <p className="text-lg text-muted-foreground text-balance max-w-lg text-center">
        What developers and founders of top companies around the internet are
        saying about Reweb.
      </p>
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 p-6">
        <TestimonialCard
          name="Bob"
          username="thisisbob"
          image={placeholderImage}
          text="Curabitur at quam eget eros semper euismod vitae at neque. Ut ultrices ut tortor et feugiat. Etiam vitae nisi eleifend, blandit ligula quis, sodales neque."
        />
        <TestimonialCard
          name="Emily"
          username="emilysmith"
          image={placeholderImage}
          text="Suspendisse a velit elit. Curabitur augue libero, vulputate sed dui id, sodales venenatis sem. Suspendisse dapibus neque eu justo volutpat gravida."
        />
        <TestimonialCard
          name="Micheal"
          username="michael"
          image={placeholderImage}
          text="Vivamus dignissim porta orci, finibus tempus risus consectetur dapibus. Donec quis ornare elit. Curabitur tempor."
        />
        <TestimonialCard
          name="Linda"
          username="thisislinda"
          image={placeholderImage}
          text="Nullam non lorem vitae risus volutpat dictum non sed magna. Aliquam in venenatis quam. Morbi feugiat tristique leo, vel ultrices dolor varius non."
        />
      </div>
    </section>
  );
}
