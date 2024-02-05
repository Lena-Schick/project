import 'package:flutter/material.dart';
import 'package:project/salatBowl.dart';

class DessertPage extends StatelessWidget {
  const DessertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SalatBowl(),
                      ));
                },
                clipBehavior: Clip.hardEdge,
                child: const Row(
                  children: [
                    Image(
                        image: AssetImage("assets/images/Tom_mit_Linsen.png")),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
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
            ],
          ) /*const Image(
                  image: AssetImage("assets/images/Salat_Bowl.png"),
                  width: 130,
                  height: 130,
                ),*/
        ],
      ),
    ));
  }
}
