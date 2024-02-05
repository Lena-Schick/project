import 'package:flutter/material.dart';

class Ursprung extends StatelessWidget {
  const Ursprung({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Der Ursprung von Ayurveda"),
      ),
      body: const _Ursprung(),

      /* child: ElevatedButton(
            child: const Text("Zurück"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),*/
    );
  }
}

class _Ursprung extends StatelessWidget {
  const _Ursprung({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Die Heilkunst Ayurveda ist ursprünglich aus der vedischen Hochkultur Indiens entstanden. Der genaue Entstehungszeitpunkt ist unbekannt, erste Anzeichen sind jedoch bereits über 5.000 Jahre alt. Die ca. 3.000 Jahre alte „Agnivesha Tantra“ ist die älteste bekannte Aufzeichnung der Ursprünge von Ayurveda. Besonders verbreitet ist Ayurveda in Indien und Sri Lanka, teilweise auch in Nepal. Ein Teil der ayurvedischen Lehre ist mit dem Untergang der vedischen Kultur verloren gegangen. Während des Mittelalters kamen viele Einflüsse ausländischer Medizin nach Indien. Während dieser Epoche wurde Ayurveda in Indien für fast 150 Jahre verboten. In Sri Lanka hingegen wurde Ayurveda durchgehend praktiziert. Heutzutage gibt es daher geringe Unterschiede zwischen dem Ayurveda in Indien und in Sri Lanka, da in Indien aufgrund des verlorengegangenen Wissens die ayurvedische Lehre mit neuen Behandlungsmethoden ergänzt wurde. In Indien und Sri Lanka genießt Ayurveda in der Gesellschaft eine hohe Anerkennung. Die traditionelle, medizinische Heilmethode wird in beiden Ländern an staatlichen Universitäten gelehrt und nach fünfeinhalb Jahren mit einem Staatsexamen als Ayurveda Arzt abgeschlossen.",
              softWrap: true,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
