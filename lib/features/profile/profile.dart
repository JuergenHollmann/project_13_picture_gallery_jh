import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfile());
}

const primeColor = Color.fromRGBO(200, 210, 255, 1); // hellblau

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // den gesamten Hintergrund einfärben:
        backgroundColor: primeColor,
        // appBar: AppBar(
        //   title: const Text('Mein Profil'),
        //   foregroundColor: Colors.white, // Schriftfarbe
        //   backgroundColor:
        //       const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
        //   shadowColor: Colors.black87, // Schattten unter der AppBar
        //   elevation: 10, // Höhe des Schattens unter der AppBar
        // ),
        body: SafeArea(
          child: Text('MyProfile'),
        ),
// // ----------------------------------------------------------------------------------------------
// // Standard NavigationBar
// // ----------------------------------------------------------------------------------------------
//         bottomNavigationBar: NavigationBar(
//           backgroundColor:
//               Colors.amber, //const Color.fromARGB(255, 4, 85, 151),
//           indicatorColor: Colors.blue,
//           //selectedIndex: 0,
//           onDestinationSelected: (int index) {
//             log("Button $index geklickt");
//             // currentIndex = index;
//             // setState(() {});
//           },
//           destinations: const [
//             NavigationDestination(
//               icon: Icon(Icons.image_rounded),
//               label: "Alle Bilder",
//               // enabled: true,
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.stars_rounded),
//               label: "Favoriten",
//               //enabled: true,
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.person),
//               label: "Über mich",
//             ),
//           ],
//         ),
// // ----------------------------------------------------------------------------------------------
      ),
    );
  }
}
