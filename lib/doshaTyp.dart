import 'package:flutter/material.dart';

class DoshaTyp extends StatelessWidget {
  const DoshaTyp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Der Dosha-Typ"),
      ),
      body: const _DoshaTyps(),

      /* child: ElevatedButton(
            child: const Text("Zurück"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),*/
    );
  }
}

class _DoshaTyps extends StatelessWidget {
  const _DoshaTyps({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Vata",
              softWrap: true,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Vata besteht aus den Elementen Luft und Raum und gilt als Lebensenergie. In unserem Körper reguliert es alle Aktivitäten. Es ist verantwortlich für die Atmung, das Nervensystem und die Bewegung. \nIst Vata im Gleichgewicht, sorgt es für Flexibilität, Kreativität und Leichtigkeit. Ist es im Ungleichgewicht, kann es Nervosität hervorrufen, Schlaflosigkeit oder Blähungen.",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Pitta",
              softWrap: true,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Pitta besteht aus den Elementen Feuer und Wasser und gilt als Energie der Erhitzung. In unserem Körper reguliert es alle biochemischen Vorgänge, ist verantwortlich für den Stoffwechsel und die Verdauung. \nIst Pitta im Gleichgewicht, sorgt es für Aufnahmebereitschaft, Verständnis und Lernfähigkeit. Ist es im Ungleichgewicht, kann es Wut hervorrufen, Verdauungsstörungen oder Entzündungen.",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Kapha",
              softWrap: true,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Kapha besteht aus den Elementen Wasser und Erde und gilt als formende Energie. In unserem Körper reguliert es den Aufbau der Körperstrukturen, ist verantwortlich für Gelenkigkeit und Stabilität. \nIst Kapha im Gleichgewicht, sorgt es für Ruhe und Liebe. Ist es im Ungleichgewicht, kann es Gier, Erkältungen oder Fettleibigkeit hervorrufen.",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
