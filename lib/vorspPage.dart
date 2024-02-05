import 'package:flutter/material.dart';
import 'package:project/salatBowl.dart';

class VorspPage extends StatelessWidget {
  const VorspPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.all(15),
      color: Color.fromRGBO(245, 232, 214, 1),
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
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/Salat_Bowl.png"),
                        width: 130,
                        height: 130,
                      ),
                      Text("Salat Bowl")
                    ],
                  )),
              SizedBox(
                width: 20,
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
          ),
          SizedBox(
            height: 20,
          ),
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
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/Salat_Bowl.png"),
                        width: 130,
                        height: 130,
                      ),
                      Text("Salat Bowl")
                    ],
                  )),
              SizedBox(
                width: 20,
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
          ),
          SizedBox(
            height: 20,
          ),
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
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/Salat_Bowl.png"),
                        width: 130,
                        height: 130,
                      ),
                      Text("Salat Bowl")
                    ],
                  )),
              SizedBox(
                width: 20,
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
          ),
          SizedBox(
            height: 20,
          ),
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
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/Salat_Bowl.png"),
                        width: 130,
                        height: 130,
                      ),
                      Text("Salat Bowl")
                    ],
                  )),
              SizedBox(
                width: 20,
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
          ),
          SizedBox(
            height: 20,
          ),
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
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/Salat_Bowl.png"),
                        width: 130,
                        height: 130,
                      ),
                      Text("Salat Bowl")
                    ],
                  )),
              SizedBox(
                width: 20,
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
          ),
        ],
      ),
    ));
  }
}
