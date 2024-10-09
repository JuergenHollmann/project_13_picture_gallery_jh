// ----------------------------------------------------------------------------------------------
// GridView mit Card
// ----------------------------------------------------------------------------------------------
import 'package:flutter/material.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/repository/gallery_data.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/screens/detail_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key, required this.galleryItem});
  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: galleryData.length,
        itemBuilder: (context, index) {
          final GalleryItem item = galleryData[index];
          //final item = galleryData[index];

          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      DetailPage(galleryItem: galleryItem, item: item)));
            },
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 155,
                      height: 155,
                      child: Image.asset(item.imagePath, fit: BoxFit.cover),
                    ),
                  ),
                  // ignore: unnecessary_string_interpolations
                  Text("${item.imageTitle}",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// ----------------------------------------------------------------------------------------------
// --> Diese Codes werden hier gespeichert, um einfache Tests für die GridView zu machen.
// ----------------------------------------------------------------------------------------------
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: GridView.count(
//             crossAxisCount: 2,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 20,
//             itemCount: 4,
// ----------------------------------------------------------------------------------------------
// ... mit 4 Containern in 4 Farben zum einfachen Testen:
// ----------------------------------------------------------------------------------------------
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.blue,
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.red,
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.amber,
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.green,
//               ),
// ----------------------------------------------------------------------------------------------
// ... mit einer generierten Liste (wo man die Anzahl variabel zum Testen eingeben kann: 
// ----------------------------------------------------------------------------------------------
//               // children: List.generate(
//               //   16,
//               //   (index) => Container(
//               //     color: Colors.blue,
//               //     child: Center(
//               //       child: Text("Item $index"),
//               //     ),
//               //   ),
//               // ),
//             ],
// ----------------------------------------------------------------------------------------------