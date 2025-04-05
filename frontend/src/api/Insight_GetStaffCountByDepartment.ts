interface StaffCountByDepartment {
  department: string;
  number_of_staff: number;
}

/**
 * Fetches staff count data by department from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of StaffCountByDepartment objects.
 * @throws An error if the fetch request fails.
 */
const fetchStaffCountByDepartment = async (
  apiUrl: string
): Promise<StaffCountByDepartment[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: StaffCountByDepartment[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchStaffCountByDepartment;
