import Image, { StaticImageData } from "next/image";
import { Card, CardContent } from "@/components/ui/card";

interface TestimonialCardProps {
  text: string;
  image: StaticImageData; // Change the type to StaticImageData
  name: string;
  username: string;
}

export function TestimonialCard({
  text,
  image,
  name,
  username,
}: TestimonialCardProps) {
  return (
    <Card className="mt-7 inline-block break-inside-avoid shadow-lg">
      <CardContent className="flex flex-col items-start gap-4 divide-y p-7">
        <p className="text-foreground">{text}</p>
        <div className="flex items-center gap-4 w-full pt-4">
          <div className="relative w-10 h-10">
            <Image
              src={image} // Pass the imported image directly
              alt="Picture"
              fill
              className="rounded-full object-cover"
            />
          </div>
          <div>
            <p className="font-semibold leading-none text-foreground">{name}</p>
            <p className="mt-1 leading-none text-muted-foreground">
              @{username}
            </p>
          </div>
        </div>
      </CardContent>
    </Card>
  );
}
