import { CheckIcon, XIcon } from "lucide-react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import type React from "react"; // Added import for React

interface BeforeAfterItem {
  title: string;
  items: string[];
}

interface BeforeAfterProps {
  before: BeforeAfterItem;
  after: BeforeAfterItem;
}

export function BeforeAfter({ before, after }: BeforeAfterProps) {
  return (
    <section className="py-16 md:py-24">
      <div className="container mx-auto px-4">
        <div className="flex flex-col gap-3">
          <span className="font-bold uppercase text-primary text-center">
            Comparison
          </span>
          <h2 className="font-heading text-3xl font-semibold tracking-tight sm:text-4xl text-balance text-center">
            Use Case
          </h2>
        </div>
        <div className="grid gap-8 md:grid-cols-2 mt-4">
          <BeforeCard {...before} />
          <AfterCard {...after} />
        </div>
      </div>
    </section>
  );
}

function BeforeCard({ title, items }: BeforeAfterItem) {
  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2 text-2xl font-bold text-slate-900 dark:text-slate-300">
          <XIcon className="h-6 w-6 text-slate-500" />
          Before
        </CardTitle>
      </CardHeader>
      <CardContent>
        <h3 className="mb-4 text-xl font-semibold text-slate-800 dark:text-slate-400">
          {title}
        </h3>
        <ul className="space-y-3">
          {items.map((item, index) => (
            <ListItem key={index} icon={XIcon}>
              {item}
            </ListItem>
          ))}
        </ul>
      </CardContent>
    </Card>
  );
}

function AfterCard({ title, items }: BeforeAfterItem) {
  return (
    <Card className="bg-primary text-primary-foreground">
      <CardHeader>
        <CardTitle className="flex items-center gap-2 text-2xl font-bold">
          After
          <CheckIcon className="h-6 w-6" />
        </CardTitle>
      </CardHeader>
      <CardContent>
        <h3 className="mb-4 text-xl font-semibold">{title}</h3>
        <ul className="space-y-3">
          {items.map((item, index) => (
            <ListItem key={index} icon={CheckIcon}>
              {item}
            </ListItem>
          ))}
        </ul>
      </CardContent>
    </Card>
  );
}

function ListItem({
  children,
  icon: Icon,
}: {
  children: React.ReactNode;
  icon: typeof XIcon | typeof CheckIcon;
}) {
  return (
    <li className="flex items-start gap-3">
      <Icon className="mt-1 h-5 w-5 shrink-0" />
      <span>{children}</span>
    </li>
  );
}
