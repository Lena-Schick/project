import 'package:flutter/material.dart';
import 'package:project/salatBowl.dart';

class HauptSpPage extends StatelessWidget {
  const HauptSpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10),
            color: Color.fromRGBO(245, 232, 214, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SalatBowl(),
                        ));
                  },
                  child: const Row(
                    children: [
                      Image(
                          image: AssetImage("assets/images/Tom_mit_Linsen.png"),
                          width: 150,
                          height: 150),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "data",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "data",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SalatBowl(),
                        ));
                  },
                  child: const Row(
                    children: [
                      Image(
                          image: AssetImage("assets/images/Tom_mit_Linsen.png"),
                          width: 150,
                          height: 150),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "data",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "data",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SalatBowl(),
                        ));
                  },
                  child: const Image(
                    image: AssetImage("assets/images/Salat_Bowl.png"),
                    width: 130,
                    height: 130,
                  ),
                ),
              ],
            )));
  }
}
