import 'package:flutter/material.dart';
import 'package:project/doshas.dart';
import 'package:shimmer/shimmer.dart';
import 'package:project/einführung.dart';
import 'package:project/regeln.dart';
import 'package:project/vorspPage.dart';
import 'package:project/suppePage.dart';
import 'package:project/hauptSpPage.dart';
import 'package:project/dessertPage.dart';
import 'package:project/Ursprung.dart';
import 'package:project/hilft.dart';
import 'package:project/doshas.dart';
import 'package:project/doshaTyp.dart';
import 'package:project/vata.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MyHomePage(),
      /* useMaterial3: true,*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _NavigationWrapperState();
}

class _NavigationWrapperState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ayurveda für dein Leben"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, //macht oben auch die Farbe
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                "Ayurveda für dein Leben",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Einfuehrung()),
                );
              },
              child: const Text("Einführung in die Ayurvedaküche"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Regeln()),
                );
              },
              child: const Text("Regeln für die Ernährung"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ursprung()),
                );
              },
              child: const Text("Der Ursprung von Ayurveda"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const hilft()),
                );
              },
              child: const Text("Dabei hilft Ayurveda"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Doshas()),
                );
              },
              child: const Text("Drei Doshas, fünf Elemente"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DoshaTyp()),
                );
              },
              child: const Text("Der Dosha-Typ"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Einfuehrung()),
                );
              },
              child: const Text("VATA"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Vata()),
                );
              },
              child: const Text("PITTA"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Einfuehrung()),
                );
              },
              child: const Text("KAPHA"),
            ),
            const SizedBox(
              height: 100,
              width: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              child: const Text("Zurück"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.lunch_dining_outlined),
            label: 'Vorspeise',
          ),
          NavigationDestination(
            icon: Icon(Icons.soup_kitchen),
            label: 'Suppe',
          ),
          NavigationDestination(
            icon: Icon(Icons.lunch_dining_rounded),
            label: 'Hauptspeise',
          ),
          NavigationDestination(
            icon: Icon(Icons.icecream),
            label: 'Dessert',
          ),
        ],
      ),
      body: SafeArea(
          child: <Widget>[
        const StartPage(),
        const VorspPage(),
        const SuppePage(),
        const HauptSpPage(),
        const DessertPage(),
      ][currentPageIndex]),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color.fromRGBO(245, 232, 214, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            height: 300,
            width: 2000,
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvdps8Os1lv3xZtvUnmu3xh0ELpSrkaJVuyA&usqp=CAU"),
          ),
          SizedBox(
            child: Shimmer.fromColors(
              baseColor: Colors.orange,
              highlightColor: Colors.yellow,
              child: Text(
                'Einfache Rezepte für jeden Tag',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          /*const Image(
            height: 300,
            width: 400,
            image: NetworkImage(
                "https://seanovista.com/wp-content/uploads/2021/12/ayurvedic-food-balance.jpg"),
          ),*/
        ],
      ),
    );
  }
}
