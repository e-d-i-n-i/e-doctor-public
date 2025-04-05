interface GenderData {
  gender: string;
  number_of_patients: number;
}

/**
 * Fetches gender-based patient data from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of GenderData objects.
 * @throws An error if the fetch request fails.
 */
const fetchDataPatientCountByGender = async (
  apiUrl: string
): Promise<GenderData[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: GenderData[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchDataPatientCountByGender;
