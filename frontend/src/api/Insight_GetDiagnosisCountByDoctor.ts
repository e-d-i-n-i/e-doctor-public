interface DiagnosisCountByDoctor {
  doctor_id: string;
  number_of_diagnoses: number;
}

/**
 * Fetches diagnosis count data by doctor from the specified API endpoint.
 * @param apiUrl - The URL of the API endpoint to fetch data from.
 * @returns A promise that resolves to an array of DiagnosisCountByDoctor objects.
 * @throws An error if the fetch request fails.
 */
const fetchDiagnosisCountByDoctor = async (
  apiUrl: string
): Promise<DiagnosisCountByDoctor[]> => {
  try {
    const response = await fetch(apiUrl);
    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
    const data: DiagnosisCountByDoctor[] = await response.json();
    return data;
  } catch (error) {
    throw new Error(
      `Failed to fetch data: ${
        error instanceof Error ? error.message : "Unknown error"
      }`
    );
  }
};

export default fetchDiagnosisCountByDoctor;
