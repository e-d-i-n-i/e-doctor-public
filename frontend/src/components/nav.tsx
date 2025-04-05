"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { ModeToggle } from "./site/theme/theme-toggle";
import { Button } from "./ui/button";
import { motion, useScroll, useMotionValueEvent } from "framer-motion";
import { useState } from "react";
import { Github, Menu } from "lucide-react";
import {
  Sheet,
  SheetContent,
  SheetTrigger,
  SheetTitle,
  SheetFooter,
} from "@/components/ui/sheet";

export const Nav = () => {
  const { scrollY } = useScroll();
  const [hidden, setHidden] = useState(false);

  useMotionValueEvent(scrollY, "change", (latest) => {
    const previous = scrollY.getPrevious() ?? 0;
    if (latest > previous && latest > 150) {
      setHidden(true);
    } else {
      setHidden(false);
    }
  });

  return (
    <motion.nav
      variants={{
        visible: { y: 0 },
        hidden: { y: "-125%" },
      }}
      animate={hidden ? "hidden" : "visible"}
      transition={{ duration: 0.35, ease: "easeInOut" }}
      className="sticky left-0 right-0 top-4 z-50 mx-auto flex h-fit max-w-6xl items-center justify-between rounded-lg border bg-background p-2"
    >
      <h1 className="ml-2">
        <Link href="/" className="font-chillax">
          <span className="text-orange-500">e</span>-doctor
        </Link>
      </h1>
      <NavList />
    </motion.nav>
  );
};

const links = [
  { name: "Login", href: "/login" },
  // { name: "Stats", href: "/stats" },
  // { name: "Test Cases", href: "/test-cases" },
  // { name: "Documentation", href: "/doc" },
];

const NavList = () => {
  const pathname = usePathname();

  return (
    <div className="flex items-center gap-8">
      <div className="hidden items-center gap-4 text-sm md:flex">
        {links.map((link) => (
          <Link
            key={link.href}
            href={link.href}
            className={`${
              pathname === link.href
                ? "pointer-events-none text-muted-foreground"
                : " transition-all hover:-mt-px hover:mb-px hover:border-b hover:border-b-orange-500"
            }`}
          >
            {link.name}
          </Link>
        ))}
      </div>

      <div className="flex items-center gap-2">
        <ModeToggle />
        <Button variant="outline" size="icon" asChild>
          <a
            href="https://github.com/e-d-i-n-i/e-doctor"
            target="_blank"
            rel="noopener noreferrer"
          >
            <Github className="h-4 w-4" />
            <span className="sr-only">GitHub repository</span>
          </a>
        </Button>
        <Sheet>
          <SheetTrigger asChild>
            <Button variant="outline" size="icon" className="md:hidden">
              <Menu className="h-4 w-4" />
              <span className="sr-only">Open menu</span>
            </Button>
          </SheetTrigger>
          <SheetContent>
            <SheetTitle className="font-chillax text-2xl">
              <span className="text-orange-500">e</span>-doctor
            </SheetTitle>
            <nav className="mt-8 flex flex-col gap-4">
              {links.map((link) => (
                <Link
                  key={link.href}
                  href={link.href}
                  className={`${
                    pathname === link.href
                      ? "pointer-events-none text-muted-foreground border-b hover:border-b-orange-500"
                      : "transition-all border-b hover:border-b-orange-500"
                  }`}
                >
                  {link.name}
                </Link>
              ))}
            </nav>
            <SheetFooter className="mt-6">
              <div className="flex items-center justify-between w-full border p-2 rounded-sm">
                <a
                  href="https://github.com/e-d-i-n-i/e-doctor"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center gap-2 text-sm text-muted-foreground hover:text-primary"
                >
                  <Github className="h-4 w-4" />
                  GitHub
                </a>
                <ModeToggle />
              </div>
            </SheetFooter>
          </SheetContent>
        </Sheet>
      </div>
    </div>
  );
};

export default Nav;
