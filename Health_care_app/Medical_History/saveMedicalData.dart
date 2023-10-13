import 'package:mongo_dart/mongo_dart.dart';

Future<void> saveDataToDatabase(String medicalHistory, String medications, String allergies) async {
  final db = Db('mongodb://localhost:27017/your_database_name');
  await db.open();

  final collection = db.collection('patient_data');
  await collection.insert({
    'medicalHistory': medicalHistory,
    'medications': medications,
    'allergies': allergies,
  });

  await db.close();
}
