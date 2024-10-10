import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/screens/favorites_screen.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/screens/start_page.dart';
import 'package:project_13_picture_gallery_jh/features/profile/my_profile.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/repository/gallery_data.dart';

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
  final List<Widget> screens = [
    StartPage(
      galleryItem: GalleryItem(
          imageTitle: "imageTitle",
          imageDate: "imageDate",
          imageDescription: "imageDescription",
          imagePath: "imagePath"),
    ),
    const Favorites(image: Icon(Icons.stars_rounded)),
    const MyProfile(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // den gesamten Hintergrund einfärben:
        backgroundColor: primeColor,
// ----------------------------------------------------------------------------------------------
// AppBar
// ----------------------------------------------------------------------------------------------
        appBar: AppBar(
          title: const Text(
            'Meine Bildergalerie',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor:
              const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
          shadowColor: Colors.black, // Schattten unter der AppBar
          elevation: 10, // Höhe des Schattens unter der AppBar
        ),
// ----------------------------------------------------------------------------------------------
// Standard NavigationBar
// ----------------------------------------------------------------------------------------------
        bottomNavigationBar: NavigationBar(
          backgroundColor: const Color.fromARGB(
              255, 235, 182, 210), //const Color.fromARGB(255, 252, 255, 203),
          indicatorColor: Colors.blue,
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            log("Button $index geklickt");
            currentIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.image_rounded),
              label: "Alle Bilder",
            ),
            NavigationDestination(
              icon: Icon(Icons.stars_rounded),
              label: "Favoriten",
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Über mich",
            ),
          ],
        ),
// ----------------------------------------------------------------------------------------------
        body: screens[currentIndex],
      ),
    );
  }
}
// ----------------------------------------------------------------------------------------------
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const StartPage(),
//       routes: {
//         '/my_bottom_navigation_bar': (context) => const MyBottomNavigationBar(),
//       },
//     );
//   }
// }
// ----------------------------------------------------------------------------------------------