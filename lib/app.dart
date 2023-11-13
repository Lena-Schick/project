import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MyHomePage(),
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
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text("Einführung in die Ayurvedaküche"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Regeln für die Ernährung"),
              onTap: () {
                Navigator.pop(context);
              },
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
            icon: Icon(Icons.search),
            label: 'Suche',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favoriten',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
          child: <Widget>[
        const StartPage(),
        const SearchPage(),
        const FavoritesPage(),
        const ProfilePage(),
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
            height: 250,
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
          const Image(
            height: 300,
            width: 400,
            image: NetworkImage(
                "https://seanovista.com/wp-content/uploads/2021/12/ayurvedic-food-balance.jpg"),
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 100,
              height: 100,
              child: Placeholder(),
            ),
            Text(
              'Search',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ]),
    );
  }
}

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final List<String> items = List.generate(50, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(items[index]));
      },
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            width: 100,
            height: 100,
            child: Placeholder(),
          ),
          Text(
            'Profile Page',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
