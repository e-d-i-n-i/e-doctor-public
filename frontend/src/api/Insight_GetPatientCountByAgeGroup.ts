interface PatientCountByAgeGroup {
  age_group: string;
  number_of_patients: number;
}

/**
 * Fetches patient count data by age group from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of PatientCountByAgeGroup objects.
 * @throws An error if the fetch request fails.
 */
const fetchPatientCountByAgeGroup = async (
  apiUrl: string
): Promise<PatientCountByAgeGroup[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: PatientCountByAgeGroup[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchPatientCountByAgeGroup;
