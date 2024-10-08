import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/screens/favorites.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/screens/start_page.dart';
import 'package:project_13_picture_gallery_jh/features/profile/profile.dart';

void main() {
  runApp(const MainApp());
}

const primeColor = Color.fromRGBO(200, 210, 255, 1); // hellblau

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> widgets = [
    const StartPage(),
    const Favorites(),
    const MyProfile(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // den gesamten Hintergrund einfärben:
        backgroundColor: primeColor,
        appBar: AppBar(
          title: const Text('Meine Bildergalerie'),
          foregroundColor: Colors.white, // Schriftfarbe
          backgroundColor:
              const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
          shadowColor: Colors.black87, // Schattten unter der AppBar
          elevation: 10, // Höhe des Schattens unter der AppBar
        ),
// ----------------------------------------------------------------------------------------------
// Standard NavigationBar
// ---------------------------------------------------------------------------------------------
        bottomNavigationBar: NavigationBar(
          backgroundColor:
              Colors.amber, //const Color.fromARGB(255, 4, 85, 151),
          indicatorColor: Colors.blue,
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            log("Button $index geklickt");
            currentIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.image_rounded),
              label: "Alle Bilder",
              // enabled: true,
            ),
            NavigationDestination(
              icon: Icon(Icons.stars_rounded),
              label: "Favoriten",
              //enabled: true,
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Über mich",
              // selectedIcon: Colors.black, // funzt nicht
            ),
          ],
        ),
// ----------------------------------------------------------------------------------------------
        body: widgets[currentIndex],
      ),
    );
  }
}
