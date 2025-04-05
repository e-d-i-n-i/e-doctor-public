"use client";

import { TrendingUp } from "lucide-react";
import { Label, PolarRadiusAxis, RadialBar, RadialBarChart } from "recharts";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import {
  ChartConfig,
  ChartContainer,
  ChartTooltip,
  ChartTooltipContent,
} from "@/components/ui/chart";
import { useEffect, useState } from "react";
import fetchDataPatientCountByGender from "@/api/fetchDataPatientCountByGender"; // Import the fetchData utility
import LoadingSpinner from "@/components/loading-spinner"; // Import the LoadingSpinner component

interface GenderData {
  female: number;
  male: number;
}

interface RadialChartStackedProps {
  apiEndpoint: string; // API endpoint passed as a prop
}

const chartConfig = {
  female: {
    label: "Female",
    color: "hsl(var(--chart-1))",
  },
  male: {
    label: "Male",
    color: "hsl(var(--chart-2))",
  },
} satisfies ChartConfig;

export function RadialChartStacked_Insight_GetTestRequestsByPriority({
  apiEndpoint,
}: RadialChartStackedProps) {
  const [data, setData] = useState<GenderData[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchGenderData = async () => {
      try {
        const response = await fetchDataPatientCountByGender(apiEndpoint);
        setData([
          {
            female: response[0].number_of_patients,
            male: response[1].number_of_patients,
          },
        ]);
      } catch (err) {
        setError(
          err instanceof Error ? err.message : "An unknown error occurred"
        );
      } finally {
        setLoading(false);
      }
    };

    fetchGenderData();
  }, [apiEndpoint]);

  if (loading) {
    return (
      <div className="flex justify-center items-center h-full">
        <LoadingSpinner />
      </div>
    );
  }

  if (error) {
    return <div>Error: {error}</div>;
  }

  // Transform the data to match the RadialBarChart format
  const chartData = [
    {
      female: data[0]?.female || 0,
      male: data[0]?.male || 0,
    },
  ];

  const totalPatients = (data[0]?.female || 0) + (data[0]?.male || 0);
  const femalePercentage =
    totalPatients > 0 ? ((data[0]?.female || 0) / totalPatients) * 100 : 0;
  const malePercentage =
    totalPatients > 0 ? ((data[0]?.male || 0) / totalPatients) * 100 : 0;

  return (
    <Card className="flex flex-col">
      <CardHeader className="items-center pb-0">
        <CardTitle>Patient Gender Distribution</CardTitle>
        <CardDescription>
          Visualizing the distribution of patients by gender.
        </CardDescription>
      </CardHeader>
      <CardContent className="flex flex-1 items-center pb-0">
        <ChartContainer
          config={chartConfig}
          className="mx-auto aspect-square w-full max-w-[250px]"
        >
          <RadialBarChart
            data={chartData}
            endAngle={180}
            innerRadius={80}
            outerRadius={130}
          >
            <ChartTooltip
              cursor={false}
              content={<ChartTooltipContent hideLabel />}
            />
            <PolarRadiusAxis tick={false} tickLine={false} axisLine={false}>
              <Label
                content={({ viewBox }) => {
                  if (viewBox && "cx" in viewBox && "cy" in viewBox) {
                    return (
                      <text x={viewBox.cx} y={viewBox.cy} textAnchor="middle">
                        <tspan
                          x={viewBox.cx}
                          y={(viewBox.cy || 0) - 16}
                          className="fill-foreground text-2xl font-bold"
                        >
                          {totalPatients.toLocaleString()}
                        </tspan>
                        <tspan
                          x={viewBox.cx}
                          y={(viewBox.cy || 0) + 4}
                          className="fill-muted-foreground"
                        >
                          Patients
                        </tspan>
                      </text>
                    );
                  }
                }}
              />
            </PolarRadiusAxis>
            {/* First Radial Bar (Female) */}
            <RadialBar
              dataKey="female"
              stackId="a"
              cornerRadius={5}
              fill="var(--color-female)"
              className="stroke-transparent stroke-2"
            />
            {/* Second Radial Bar (Male) */}
            <RadialBar
              dataKey="male"
              stackId="a"
              cornerRadius={5}
              fill="var(--color-male)"
              className="stroke-transparent stroke-2"
            />
          </RadialBarChart>
        </ChartContainer>
      </CardContent>
      <CardFooter className="flex-col gap-2 text-sm">
        <div className="flex items-center gap-2 font-medium leading-none">
          <TrendingUp className="h-4 w-4" />
          <span>
            Female: {femalePercentage.toFixed(1)}% • Male:{" "}
            {malePercentage.toFixed(1)}%
          </span>
        </div>
        <div className="leading-none text-muted-foreground">
          Showing patient distribution by gender
        </div>
      </CardFooter>
    </Card>
  );
}
