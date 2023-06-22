import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  Hive.init('Databox');
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
      home: ScreenHome(),
    );
  }
}

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final _formkey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(220, 254, 253, 1),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 246, 255, 0),
              Color.fromARGB(255, 104, 207, 255)
            ],
          ),
        ),
        child: ListView(),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
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
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(188, 141, 141, 255),
                        blurRadius: 5),
                  ],
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  splashColor: const Color.fromARGB(255, 0, 170, 255),
                  child: FloatingActionButton(
                    tooltip: "Add notes",
                    backgroundColor: const Color.fromARGB(207, 0, 51, 121),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FaIcon(FontAwesomeIcons.pen),
                                SizedBox(
                                  width: 11,
                                ),
                                Text("Enter some text"),
                              ],
                            ),
                            content: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Form(
                                    key: _formkey1,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Enter something ",
                                          hintStyle: GoogleFonts.adamina(
                                              textStyle: const TextStyle(
                                                  color: Colors.black))),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const FaIcon(FontAwesomeIcons.check),
                                  )
                                ],
                              ),
                            ),
                            elevation: 1,
                          );
                        },
                      );
                    },
                    splashColor: const Color.fromARGB(255, 15, 18, 20),
                    child: const FaIcon(
                      FontAwesomeIcons.plus,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 10,
        shadowColor: Colors.red,
        surfaceTintColor: const Color.fromRGBO(233, 30, 99, 1),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset("Assets/mount.jpg"),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            const ListTile(
              leading: FaIcon(FontAwesomeIcons.house),
              trailing: Text("Home"),
              title: Text("dummy "),
              enabled: true,
            ),
            const ListTile(
              enabled: true,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 1, left: 45),
          child: Text(
            "TODO PRO",
            style: GoogleFonts.grandstander(
              textStyle: const TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: 35),
            ),
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
