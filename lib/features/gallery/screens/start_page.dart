import 'package:flutter/material.dart';
import 'package:project_13_picture_gallery_jh/features/gallery/repository/gallery_data.dart';
//import 'package:project_13_picture_gallery_jh/features/gallery/screens/favorites.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StartPage> createState() => _StartPageState(galleryDataList: []);
}

class _StartPageState extends State<StartPage> {

  final List<GalleryData> galleryDataList;

  _StartPageState({required this.galleryDataList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      //itemCount: galleryDataList.length, //7, // eigentlich: galleryData.length,
      itemCount: galleryDataList.length,
      itemBuilder: (context, index) {
        final item = galleryDataList[index]; // eigentlich: galleryData[index];
        return GestureDetector(
          onTap: () {



            // Navigator.push(
            //   context,
            //   MaterialPageRoute(


Navigator.pushNamed(context, '/my_bottom_navigation_bar');





            //builder: (context) => ImageDetailPage(image: item), // original


            // builder: (context) => Favorites(image: item),
              // ),
            // );
          },
          child: Card(
            child: Column(
              children: [
                Image.asset(item.imagePath),
                Text(item.imageTitle),
                Text(item.imageDate),
              ],
            ),
          ),
        );
      },
    );
  }
}