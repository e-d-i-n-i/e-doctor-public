interface TestRequestByTestType {
  test_type: string;
  number_of_requests: number;
}

/**
 * Fetches test request data by test type from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of TestRequestByTestType objects.
 * @throws An error if the fetch request fails.
 */
const fetchTestRequestsByTestType = async (
  apiUrl: string
): Promise<TestRequestByTestType[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: TestRequestByTestType[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchTestRequestsByTestType;
