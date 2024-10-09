import 'package:flutter/material.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/repository/gallery_data.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.galleryItem});

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(
                  galleryItem: galleryItem,
                )));
      },
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset(galleryItem.imagePath, fit: BoxFit.cover),
              ),
            ),
            Text(galleryItem.imageTitle)
          ],
        ),
      ),
    );
  }
}










//     const PhoneCard({
//     super.key,
//     required this.item,
//     this.icon = Icons.phone,
//   });

//   final ProductItem item;
//   final IconData icon;

//   @override
//   Widget build(BuildContext context) {
//     // Ein GestureDetector, damit wir auf die Card klicken können
//     return GestureDetector(
//       onTap: () => Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => DetailPage(
//                   item:
//                       item))), // Hier navigieren wir auf DetailPage und übergeben das ProductItem
//       child: Card(
//           color: Colors.white,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(icon),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     item.title,
//                     style: const TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w700),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                     color: item.color,
//                     borderRadius: BorderRadius.circular(999),
//                     border: Border.all(color: Colors.grey, width: 0.5)),
//               )
//             ],
//           )),
//     );
//   }
// }
