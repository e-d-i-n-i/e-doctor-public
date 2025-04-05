interface PatientCountByMaritalStatus {
  marital_status: string;
  number_of_patients: number;
}

/**
 * Fetches patient count data by marital status from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of PatientCountByMaritalStatus objects.
 * @throws An error if the fetch request fails.
 */
const fetchPatientCountByMaritalStatus = async (
  apiUrl: string
): Promise<PatientCountByMaritalStatus[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: PatientCountByMaritalStatus[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchPatientCountByMaritalStatus;
