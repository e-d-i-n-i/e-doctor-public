import * as Craft from "@/components/craft";
import { Main } from "@/components/craft";
import Hero from "@/components/site/hero";

export default function Home() {
  return (
    <Main>
      <Craft.Section className="flex flex-col items-center gap-12 p-2 py-12 md:p-0">
        <Hero />
      </Craft.Section>
    </Main>
  );
}
