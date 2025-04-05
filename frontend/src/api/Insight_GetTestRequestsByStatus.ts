interface TestRequestByStatus {
  status: string;
  number_of_requests: number;
}

/**
 * Fetches test request data by status from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of TestRequestByStatus objects.
 * @throws An error if the fetch request fails.
 */
const fetchTestRequestsByStatus = async (
  apiUrl: string
): Promise<TestRequestByStatus[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: TestRequestByStatus[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchTestRequestsByStatus;
