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
// ----------------------------------------------------------------------------------------------
// AppBar
// ----------------------------------------------------------------------------------------------
//         appBar: AppBar(
//           title: const Text('Mein Profil'),
//           foregroundColor: Colors.white, // Schriftfarbe
//           backgroundColor:
//               const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
//           shadowColor: Colors.black87, // Schattten unter der AppBar
//           elevation: 10, // Höhe des Schattens unter der AppBar
//         ),
// ----------------------------------------------------------------------------------------------
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),

          // Hier soll mein Profilbild in einem runden Kreis angezeigt werden
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/kaya.jpeg"),
                radius: 100,
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Kaya Müller",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Fotograf",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
// ----------------------------------------------------------------------------------------------
                  Text(
                    "Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach neuen Perspektiven und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, meine Leidenschaft und mein Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen.",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
// ----------------------------------------------------------------------------------------------
// Standard NavigationBar
// ----------------------------------------------------------------------------------------------
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
// ----------------------------------------------------------------------------------------------
      ),
    );
  }
}
