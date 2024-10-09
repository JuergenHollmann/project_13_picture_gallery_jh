import 'package:flutter/material.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/repository/gallery_data.dart';

class DetailPage extends StatelessWidget {
  final GalleryItem item;
  const DetailPage(
      {super.key, required GalleryItem galleryItem, required this.item});

  static const primeColor = Color.fromRGBO(200, 210, 255, 1); // hellblau

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeColor,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            255, 235, 182, 210), //const Color.fromARGB(255, 235, 113, 178),
        title: const Text(
          "Gallery Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.imagePath),
              const SizedBox(
                height: 30,
              ),
              Text(
                item.imageTitle,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.imageDate,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                item.imageDescription,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
