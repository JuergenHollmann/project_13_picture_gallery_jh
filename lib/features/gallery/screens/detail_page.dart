import 'package:flutter/material.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/repository/gallery_data.dart';

class DetailPage extends StatelessWidget {
  final GalleryItem item;
  const DetailPage({super.key, required GalleryItem galleryItem, required this.item});


static const primeColor = Color.fromRGBO(200, 210, 255, 1); // hellblau

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 136, 214, 253),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 112, 146, 170),
        title: const Text(
          "Gallery Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.imagePath),
              const SizedBox(
                height: 32,
              ),
              Text(
                item.imageTitle,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                item.imageDate,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(item.imageDescription),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}





//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // den gesamten Hintergrund einfärben:
//         backgroundColor: primeColor,
// // ----------------------------------------------------------------------------------------------
// // AppBar
// // ----------------------------------------------------------------------------------------------
//         appBar: AppBar(
//           title: const Text(
//             'Details',
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           backgroundColor:
//               const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
//           shadowColor: Colors.black, // Schattten unter der AppBar
//           elevation: 10, // Höhe des Schattens unter der AppBar
//         ),
// // ----------------------------------------------------------------------------------------------
//         body: const SafeArea(
//           child: Center(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 30,
//                 ),
//                 CircleAvatar(
//                   backgroundImage: AssetImage("assets/images/kaya.jpeg"),
//                   radius: 100,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   "Kaya Müller",
//                   style: TextStyle(fontSize: 30),
//                 ),
//                 Text(
//                   "Fotograf",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 24),
//                       child: Text(
//                         "Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach neuen Perspektiven und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, meine Leidenschaft und mein Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen.",
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
// // ----------------------------------------------------------------------------------------------
// // Standard NavigationBar
// // ----------------------------------------------------------------------------------------------
// //         bottomNavigationBar: NavigationBar(
// //           backgroundColor:
// //               Colors.amber, //const Color.fromARGB(255, 4, 85, 151),
// //           indicatorColor: Colors.blue,
// //           //selectedIndex: 0,
// //           onDestinationSelected: (int index) {
// //             log("Button $index geklickt");
// //             // currentIndex = index;
// //             // setState(() {});
// //           },
// //           destinations: const [
// //             NavigationDestination(
// //               icon: Icon(Icons.image_rounded),
// //               label: "Alle Bilder",
// //               // enabled: true,
// //             ),
// //             NavigationDestination(
// //               icon: Icon(Icons.stars_rounded),
// //               label: "Favoriten",
// //               //enabled: true,
// //             ),
// //             NavigationDestination(
// //               icon: Icon(Icons.person),
// //               label: "Über mich",
// //             ),
// //           ],
// //         ),
// // ----------------------------------------------------------------------------------------------
//       ),
//     );
//   }
// }
