class MedicalHistory {
  final String userId;  // Reference to the user this history belongs to
  final List<String> medications;
  final List<String> allergies;
  final List<String> conditions;

  MedicalHistory({
    required this.userId,
    required this.medications,
    required this.allergies,
    required this.conditions,
  });
}
