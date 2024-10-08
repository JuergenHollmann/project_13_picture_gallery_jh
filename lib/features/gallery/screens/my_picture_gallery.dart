


// class MyGalleryPage extends StatelessWidget {
// const MyGalleryPage({super.key, required this.dataList});

// final List<PictureItem> dataList;

// @override
// Widget build (BuildContext context) {
// 12
// return Scaffold!







// backgroundColor: const Color.fromARGB(255, 136, 214, 253),
// 14
// appBar: AppBar(
// 15
// automaticallyImplyLeading: false,
// 16
// backgroundColor: const Color.fromARGB(255, 112, 146, 170),
// 17
// title: const Text(
// 18
// "Andylis Gallery",
// 19
// style: TextStyle(fontWeight: FontWeight.w600, color: Colors-white),
// 20
// ), // Text
// 21
// ), // AppBar
// 22
// body: ListView.separated (
// 23
// separatorBuilder: (context, index) = const Divider(),
// 24
// itemCount: dataList.length,
// 25
// itemBuilder: (context, index) {
// 26
// return ListTile(
// 27
// title: Text(dataList [index]. imageTitle),
// 28
// subtitle: Text(dataList (index). imageDate),
// 29
// leading: Image.asset (
// 30
// dataList (index). imagePath,
// 31
// width: 128,
// 32
// ), ½/ Image.asset
// 33
// trailing: GestureDetector (
// 34
// onTap: () {
// 35
// Navigator.of (context) •push(
// 36
// MaterialPageRoute(
// 37
// builder: (context) => DetailSite(
// 38
// item: dataList [index],
// 39
// ), // DetailSite
// 40
// ), .
// // MaterialPageRoute
// child: const Icon(Icons-slideshow) ), // GestureDetector
// );
// •// ListTile
// I

// ),
// // ListView.separated
// D: