import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 28,
        ),
        kWidth,
        Container(
          color: Colors.blue,
          width: 28,
          height: 28,
        ),
        kWidth
      ],
    );
  }
}
