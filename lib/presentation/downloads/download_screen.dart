import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/constants.dart';

import '../../core/colors/colors.dart';
import '../widgets/app_bar_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: [
                kWidth,
                Icon(
                  Icons.settings,
                  color: kWhiteColor,
                ),
                Text("Smart Downloads")
              ],
            ),
          ],
        ));
  }
}
