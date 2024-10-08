import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key, required image});

  @override
  Widget build(BuildContext context) {
    return const Center(
      // Hier sollen die Favoriten-Bilder in einem Carusell angezeigt werden
      child: Image(
        image: AssetImage("assets/images/ski.jpeg"),
      ),
    );
  }
}
