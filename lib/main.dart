import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO PRO',
      theme: ThemeData(),
      home: const ScreenHome(),
    );
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(220, 254, 253, 1),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: RadialGradient(center: Alignment.topCenter, colors: [
          Color.fromARGB(255, 246, 255, 0),
          Color.fromARGB(255, 104, 207, 255)
        ])),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 48, 181, 130),
              Color.fromARGB(255, 104, 207, 255)
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: CircleAvatar(
                backgroundColor: const Color.fromRGBO(255, 68, 0, 0.822),
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.plus),
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 0, 0, 0)),
                      elevation: MaterialStatePropertyAll(10),
                      iconSize: MaterialStatePropertyAll(75)),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 10,
        shadowColor: Colors.red,
        surfaceTintColor: Colors.pink,
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                colors: [
                  Color.fromARGB(255, 248, 144, 54),
                  Color.fromARGB(255, 255, 242, 125),
                ],
                focalRadius: 100,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.orange,
                    ))
              ],
            )),
      ),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 2,left: 75),
          child: Text(
            "TODO PRO",
            style: TextStyle(),
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const FaIcon(FontAwesomeIcons.burger));
          },
        ),
        backgroundColor: const Color.fromARGB(0, 20, 136, 59),
      ),
    );
  }
}
