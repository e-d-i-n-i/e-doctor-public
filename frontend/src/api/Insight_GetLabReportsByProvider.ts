interface LabReportsByProvider {
  provider_id: string;
  number_of_reports: number;
}

/**
 * Fetches lab report data by provider from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of LabReportsByProvider objects.
 * @throws An error if the fetch request fails.
 */
const fetchLabReportsByProvider = async (
  apiUrl: string
): Promise<LabReportsByProvider[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: LabReportsByProvider[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchLabReportsByProvider;
