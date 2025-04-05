interface StaffCountByEmploymentType {
  employment_type: string;
  number_of_staff: number;
}

/**
 * Fetches staff count data by employment type from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of StaffCountByEmploymentType objects.
 * @throws An error if the fetch request fails.
 */
const fetchStaffCountByEmploymentType = async (
  apiUrl: string
): Promise<StaffCountByEmploymentType[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: StaffCountByEmploymentType[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchStaffCountByEmploymentType;
