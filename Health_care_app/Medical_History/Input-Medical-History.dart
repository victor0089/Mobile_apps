import 'package:flutter/material.dart';

class MedicalHistoryInputScreen extends StatefulWidget {
  @override
  _MedicalHistoryInputScreenState createState() => _MedicalHistoryInputScreenState();
}

class _MedicalHistoryInputScreenState extends State<MedicalHistoryInputScreen> {
  final TextEditingController medicalHistoryController = TextEditingController();
  final TextEditingController medicationsController = TextEditingController();
  final TextEditingController allergiesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Medical History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: medicalHistoryController,
              decoration: InputDecoration(labelText: 'Medical History'),
            ),
            TextFormField(
              controller: medicationsController,
              decoration: InputDecoration(labelText: 'Medications'),
            ),
            TextFormField(
              controller: allergiesController,
              decoration: InputDecoration(labelText: 'Allergies'),
            ),
            RaisedButton(
              onPressed: () {
                // Save the data to the database.
                saveMedicalData();
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  void saveMedicalData() {
    // Get data from the form fields
    final medicalHistory = medicalHistoryController.text;
    final medications = medicationsController.text;
    final allergies = allergiesController.text;

    // Call a service to save the data to the database
    saveDataToDatabase(medicalHistory, medications, allergies);
  }
}
