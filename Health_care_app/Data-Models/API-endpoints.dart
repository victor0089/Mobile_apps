@Operation.get()
Future<Response> getPatients() async {
  final patients = await patientsCollection.find().toList();
  return Response.ok(patients);
}

@Operation.post()
Future<Response> createPatient(@Bind.body() Patient patient) async {
  final id = await patientsCollection.insert(patient.toJson());
  return Response.ok(id);
}
