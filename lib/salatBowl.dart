import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
              icon: (_isFavorited
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border)),
              onPressed: _toggleFavorite,
              color: Colors.red[500]),
        ),
        SizedBox(
          width: 40,
          child: Container(
            child: Text("$_favoriteCount"),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _isFavorited = true;
        _favoriteCount += 1;
      }
    });
  }
}

class SalatBowl extends StatelessWidget {
  SalatBowl({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salat Bowl"),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: _buildRating(),
                  ),
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: _buildAction(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: _buildDesc(),
                  ),
                ],
              ),
            ),
          )
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          elevation: 5,
          child: Image.asset(
            "assets/images/Salat_Bowl.png",
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _buildRating() => ListTile(
        title: Text(
          "Salat Bowl",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text("4 Portionen"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [FavoriteWidget()],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButton("20", "Dauer", Colors.black),
          _buildButton("20", "Arbeitszeit", Colors.black),
          _buildButton("517", "Kalorien", Colors.black),
        ],
      );

  Widget _buildButton(String label, String label1, Color color) => Column(
        children: [
          Text(
            label1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );

  Widget _buildDesc() => const Column(
        children: [
          Text(
            "Zutaten",
            softWrap: true,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "400 ml Orangensaft\n 200 g Couscous\n 1 EL Rapsöl\n 2 Tomate\n 1 Gurke\n 150g Feldsalat\n 50g Weintraube\n 1 Avocado\n 2 EL Essig\n 3 EL Joghurt\n 1/2 Bund Schnittlauch\n 2 EL Mandel\n Salz\n Pfeffer",
            softWrap: true,
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            "Zubereitung",
            softWrap: true,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Für den Salat den Orangensaft in einen Topf geben. Mit Salz, Pfeffer und Rapsöl würzen und dann erhitzen.\nDen Couscous in eine Schale füllen. Sobald der Orangensaft kocht, diesen über den Couscous gießen. Die Schale mit Klarsichtfolie oder einem Deckel abdecken und beiseite stellen. Während der Couscous zieht, die Tomaten waschen, vom Strunk befreien und fein würfeln. Die Gurke gründlich waschen, halbieren, entkernen und der Länge nach in dünne Streifen schälen.\nDen Feldsalat gründlich waschen, von Wurzeln befreien und auf einem Küchentuch trocknen.\n Die Weintrauben ebenfalls waschen und halbieren. Die Avocados halbieren, entkernen und in Streifen schneiden. Das Obst und Gemüse in einer großen Salatschüssel nach Sorte geteilt verteilen, sodass nachher die Zutaten in der Bowl klar erkennbar sind.\n Die Mandeln zum Rösten in eine Pfanne geben und ohne Zugabe von Öl auf mittlerer Hitze anrösten. Noch etwas Schnittlauch schneiden, zusammen mit dem Joghurt auf den Salat geben.\n ",
            softWrap: true,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      );
}
