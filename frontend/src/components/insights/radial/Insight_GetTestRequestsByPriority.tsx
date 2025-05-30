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
import fetchTestRequestsByPriority from "@/api/Insight_GetTestRequestsByPriority"; // Import the fetch utility
import LoadingSpinner from "@/components/loading-spinner"; // Import the LoadingSpinner component

interface TestRequestByPriority {
  priority_level: string;
  number_of_requests: number;
}

interface RadialChartStackedProps {
  apiEndpoint: string; // API endpoint passed as a prop
}

const chartConfig = {
  low: {
    label: "Low",
    color: "hsl(var(--chart-1))",
  },
  normal: {
    label: "Normal",
    color: "hsl(var(--chart-2))",
  },
  high: {
    label: "High",
    color: "hsl(var(--chart-3))",
  },
  urgent: {
    label: "Urgent",
    color: "hsl(var(--chart-4))",
  },
} satisfies ChartConfig;

export function RadialChartStacked_TestRequestsByPriority({
  apiEndpoint,
}: RadialChartStackedProps) {
  const [data, setData] = useState<TestRequestByPriority[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetchTestRequestsByPriority(apiEndpoint);
        setData(response);
      } catch (err) {
        setError(
          err instanceof Error ? err.message : "An unknown error occurred"
        );
      } finally {
        setLoading(false);
      }
    };

    fetchData();
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
  const chartData = data.map((item) => ({
    priority_level: item.priority_level.toLowerCase(),
    number_of_requests: item.number_of_requests,
  }));

  const totalRequests = data.reduce(
    (sum, item) => sum + item.number_of_requests,
    0
  );

  return (
    <Card className="flex flex-col">
      <CardHeader className="items-center pb-0">
        <CardTitle>Test Requests by Priority</CardTitle>
        <CardDescription>
          Visualizing the distribution of test requests by priority level.
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
                          {totalRequests.toLocaleString()}
                        </tspan>
                        <tspan
                          x={viewBox.cx}
                          y={(viewBox.cy || 0) + 4}
                          className="fill-muted-foreground"
                        >
                          Requests
                        </tspan>
                      </text>
                    );
                  }
                }}
              />
            </PolarRadiusAxis>
            {/* Radial Bars for each priority level */}
            {chartData.map((item, index) => (
              <RadialBar
                key={index}
                dataKey="number_of_requests"
                stackId="a"
                cornerRadius={5}
                fill={`var(--color-${item.priority_level})`}
                className="stroke-transparent stroke-2"
              />
            ))}
          </RadialBarChart>
        </ChartContainer>
      </CardContent>
      <CardFooter className="flex-col gap-2 text-sm">
        <div className="flex items-center gap-2 font-medium leading-none">
          <TrendingUp className="h-4 w-4" />
          <span>
            {data
              .map(
                (item) =>
                  `${item.priority_level}: ${(
                    (item.number_of_requests / totalRequests) *
                    100
                  ).toFixed(1)}%`
              )
              .join(" • ")}
          </span>
        </div>
        <div className="leading-none text-muted-foreground">
          Showing test requests by priority level
        </div>
      </CardFooter>
    </Card>
  );
}
