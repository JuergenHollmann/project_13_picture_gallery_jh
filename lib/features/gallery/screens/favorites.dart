import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key, required image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Hier sollen die Favoriten-Bilder in einem Carusell angezeigt werden

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 182, 210),
        title: const Text(
          "Meine Favoriten-Bilder",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),

      // Hier sollen die Favoriten-Bilder in einem Carusell angezeigt werden
      body: const Center(
        child: Image(
          image: AssetImage("assets/images/ski.jpeg"),
        ),
      ),
    );
  }
}
