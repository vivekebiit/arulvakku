import 'package:flutter/material.dart';

import '../../common/common_utils.dart';

class VerseItem extends StatefulWidget {
  final String title;

  const VerseItem({Key? key, required this.title}) : super(key: key);

  @override
  State<VerseItem> createState() => _VerseItemState();
}

class _VerseItemState extends State<VerseItem> {
  bool longPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () {
          longPressed = true;
          setState(() {});
        },
        child: Text(
          widget.title,
          style: TextStyle(
              color: longPressed ? Colors.red : null, height: 2, fontSize: 15),
        ));
  }
}
