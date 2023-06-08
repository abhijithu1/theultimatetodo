import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

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
      theme: ThemeData(
      ),
      home: const ScreenHome(),
    );
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(85, 215, 213, 1),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: OutlineGradientButton(
              gradient: LinearGradient(colors: [Colors.black, Colors.orange]),
              strokeWidth: 4,
              radius: Radius.circular(35),
              backgroundColor: Colors.white,
              child: Icon(Icons.add),

            ),
          ),
        ],
      ),
    );
  }
}
