import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key, required image});
  static const primeColor = Color.fromRGBO(200, 210, 255, 1); // hellblau

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeColor,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 182, 210),
        title: const Text(
          "Meine Favoriten-Bilder",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),

      // Hier sollen die Favoriten-Bilder in einem Carusell angezeigt werden // todo!
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Image(
            image: AssetImage("assets/images/ski.jpeg"),
          ),
        ),
      ),
    );
  }
}
