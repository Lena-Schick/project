import 'package:flutter/material.dart';

class Einfuehrung extends StatelessWidget {
  const Einfuehrung({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Einführung in die Ayurveda"),
      ),
      body: const _Einfuehrun(),

      /* child: ElevatedButton(
            child: const Text("Zurück"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),*/
    );
  }
}

class _Einfuehrun extends StatelessWidget {
  const _Einfuehrun({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              height: 210,
              width: 400,
              image: NetworkImage(
                  "https://seanovista.com/wp-content/uploads/2021/12/ayurvedic-food-balance.jpg"),
            ),
            Text(
              "Was ist Ayurveda?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Text(
              "Der Begriff Ayurveda ist ein Wort aus dem Sanskrit, der altinidischen Hoch- und Kunstsprache. Es ist zusammengesetzt aus den Wurzeln Ayus für Leben und Vit für Wissen. Im Mittelpunkt des Ayurveda stehen Erhaltung und Wiederherstellung der vollkommenen Gesundheit für Körper, Geist und Seele, die in dieser indischen Heilmethode eine Einheit bilden. Die vollkommene Gesundheit kann nach den Lehren des Ayurveda nur dann erreicht werden, wenn zwischen allen Ebenen, also Körper, Geist und Seele, ein Gleichgewicht besteht.",
            ),
            Text(
              "Bei der ayurvedischen Medizin handelt es sich um ein umfangreiches Gesundheitssystem, das weniger die Behandlung spezieller Krankheiten bedeutet als eher einen auf einer bestimmten Lebensauffassung beruhenden Umgang mit Körper und Geist.",
              softWrap: true,
            ),
            Text(
              "Dieser besondere Umgang beinhaltet die folgenden Komponenten:",
              softWrap: true,
            ),
            Text(
              "Entgiftung (Panchakarma)",
              softWrap: true,
            ),
            Text(
              "Richtige Ernährung",
              softWrap: true,
            ),
            Text(
              "Yoga-Übungen",
              softWrap: true,
            ),
            Text(
              "Anwendungen mit Kräutern und Massagetechniken",
              softWrap: true,
            ),
            Text(
              "Meditation und Gebet",
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
