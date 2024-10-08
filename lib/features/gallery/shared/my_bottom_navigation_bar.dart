import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/screens/favorites.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/screens/start_page.dart';
import 'package:project_13_picture_gallery_jh/features/profile/my_profile.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  final List<Widget> widgets = [
    const StartPage(),
    const Favorites(
      image: Icon(Icons.stars_rounded),
    ),
    const MyProfile(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// ----------------------------------------------------------------------------------------------
// Standard NavigationBar
// ----------------------------------------------------------------------------------------------
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
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

      //   bottomNavigationBar: NavigationBar(
      //     backgroundColor: const Color.fromARGB(255, 112, 146, 170),
      //     indicatorColor: const Color.fromARGB(182, 136, 214, 253),
      //     selectedIndex: currentIndex,
      //     onDestinationSelected: (index) {
      //       currentIndex = index;
      //       setState(() {});
      //     },
      //     destinations: const [
      //       NavigationDestination(
      //           icon: Icon(
      //             Icons.home,
      //             color: Colors.white,
      //           ),
      //           label: "Gallery"),
      //       NavigationDestination(
      //           icon: Icon(
      //             Icons.person_3,
      //             color: Colors.white,
      //           ),
      //           label: "About me"),
      //     ],
      //   ),

      body: widgets[currentIndex],
    );
  }
}
