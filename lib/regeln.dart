import 'package:flutter/material.dart';

class Regeln extends StatelessWidget {
  const Regeln({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Regeln für die Ernährung"),
      ),
      body: _BodyWidget(),

      /* child: ElevatedButton(
            child: const Text("Zurück"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),*/
    );
  }
}

class _BodyWidget extends StatelessWidget {
  _BodyWidget({super.key});
  final List<String> productNames = [
    'Iss mäßig. Steh vom Tisch auf, wenn der Magen zu drei Vierteln gefüllt ist. Überlade deinen Magen nicht.',
    'Iss nur, wenn du tatsächlich hungrig bist. Misstraue falschen Hungergefühlen.',
    'Iss nichts zwischen den Mahlzeiten.',
    'Nimm keine zu heiße oder zu kalte Nahrung zu dir: das reizt den Magen und ruft Unverdaulichkeit hervor.',
    'Nimm nur vier bis fünf verschiedene Nahrungsmittel pro Mahlzeit zu dir. Verzichte auf zu vielfältige Kombinationen und Mischungen. Die Verdauungssäfte können verschiedenartige und komplexe Zusammensetzungen nur schwer verdauen.',
    "Unternimm nach den Mahlzeiten keine an strengenden Tätigkeiten, weder physisch noch geistig. Ruhe eine halbe Stunde. Laufe nicht sofort zu einem Zug.",
    "Faste einmal pro Woche. Durch Fasten werden Gifte ausgeschieden, der innere Mechanismus wiederhergestellt, und die Organe können sich erholen."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 232, 214, 1),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: productNames.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Card(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Icon(Icons.arrow_right),
                        title: Text(productNames[index]),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Card(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.arrow_right),
                  title: Text(productNames[index]),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
