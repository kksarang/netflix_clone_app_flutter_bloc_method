import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/colors/colors.dart';
import 'package:netflix_clone_app/core/constants.dart';

import '../widgets/app_bar_widget.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({Key? key}) : super(key: key);

  final List imageList = [
    "https://m.media-amazon.com/images/I/61jDsQrXfMS._SY879_.jpg"
        "https://www.nairtejas.com/wp-content/uploads/2019/12/Olu-Malayalam-movie-poster-by-Oldmonks-500x731.jpg"
        "https://cdnb.artstation.com/p/assets/images/images/008/194/759/large/libin-lenin-behance-downlox-1508168397686.jpg?1511107758"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: const [
                kWidth,
                Icon(
                  Icons.settings,
                  color: kWhiteColor,
                ),
                Text("Smart Downloads")
              ],
            ),
            const Text("Introducing Downloads for you"),
            const Text(
                "We will download a personlaised selection of movies and shows for you, so there is always something to watch on your device "),
            Container(
              width: size.width,
              height: size.width,
              color: kWhiteColor,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.37,
                  ),
                  DownloadsImageWidget(size: size, imageList: imageList),
                ],
              ),
            ),
            MaterialButton(
              color: kButtonColor,
              onPressed: () {},
              child: const Text(
                "Set up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
              color: kWhiteColor,
              onPressed: () {},
              child: const Text(
                "See what you can download",
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.size,
    required this.imageList,
  }) : super(key: key);

  final Size size;
  final List imageList;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: 30 * pi / 180,
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(
              imageList[0],
            ),
          ),
        ),
      ),
    );
  }
}
