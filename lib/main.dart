import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

const primeColor = Color.fromRGBO(200, 210, 255, 1); // hellblau

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // den gesamten Hintergrund einfärben:
        backgroundColor: primeColor,
        //appBar: AppBar(title: Text("Picture Gallery")),
        body: SafeArea(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
