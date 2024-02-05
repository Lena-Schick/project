import 'package:flutter/material.dart';

class Doshas extends StatelessWidget {
  const Doshas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drei Doshas, fünf Elemente"),
      ),
      body: const _Doshas(),

      /* child: ElevatedButton(
            child: const Text("Zurück"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),*/
    );
  }
}

class _Doshas extends StatelessWidget {
  const _Doshas({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Von Anfang an – so sagt es die ayurvedische Lehre – besteht die Welt aus fünf Elementen: dem Raum (oder Äther), dem Feuer, dem Wasser, der Luft und der Erde. Sie bestimmen alles: das Wesen der Steine, Pflanzen, Tiere und Menschen.",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Der Mensch gilt als Mikrokosmos der Welt. Alle Elemente finden sich auch in seinem Körper wieder, so zum Beispiel in seinen fünf Sinnen: Hören (Raum), Sehen (Feuer), Riechen (Erde), Fühlen (Luft) und Schmecken (Wasser).",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Da in jedem Menschen bei seiner Geburt die verschiedenen Elemente unterschiedlich stark ausgeprägt sind, geht Ayurveda von einer großen menschlichen Individualität aus. Jeder einzelne Mensch ist mit besonderen körperlichen und seelischen Stärken und Schwächen ausgestattet.",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Zu welchem Typ jemand gezählt werden kann, ergibt sich aus den drei Doshas Vata, Pitta und Kapha, die wiederum aus den fünf Elementen (Raum, Feuer, Wasser, Luft und Erde) zusammengesetzt sind.",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
