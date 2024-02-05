import 'package:flutter/material.dart';

class hilft extends StatelessWidget {
  const hilft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dabei hilft Ayurveda"),
      ),
      body: const _hilft(),

      /* child: ElevatedButton(
            child: const Text("Zurück"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),*/
    );
  }
}

class _hilft extends StatelessWidget {
  const _hilft({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Ayurveda kann man bei einer Vielzahl von Indikationen zur Heilung beitragen oder die gesundheitlichen Beschwerden lindern. Da Ayurveda die Gesundheit fördert, die Selbstheilungskräfte aktiviert und den Körper entgiftet, ist eine Ayurvedakur auch für Menschen ohne Vorerkrankungen zur Prävention empfehlenswert. Dank der begleitenden Entspannungsmethoden wie Yoga und Meditation baut Ayurveda außerdem Stress ab und entschleunigt vom Alltag.",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Folgende Krankheiten und Beschwerden lassen sich besonders gut mit Ayurveda behandeln:",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Gelenkbeschwerden \nMigräne \nBluthochdruck \nHautkrankheiten \nRückenschmerzen \nVerdauungsprobleme \nDiabetes \nSchlafstörungen \nAllergien \nUnverträglichkeiten \nBurn-Out \nÜbergewicht",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
