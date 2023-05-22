import 'package:flutter/material.dart';

import '../../common/common_utils.dart';

class VerseItem extends StatefulWidget {
  final String title;
  final ValueChanged<bool> onLongPressed;

  const VerseItem({Key? key, required this.title, required this.onLongPressed})
      : super(key: key);

  @override
  State<VerseItem> createState() => _VerseItemState();
}

class _VerseItemState extends State<VerseItem> {
  bool longPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () {
          longPressed = !longPressed;
          widget.onLongPressed(longPressed);
          setState(() {});
        },
        child: Text(
          widget.title,
          style: TextStyle(
              color: longPressed ? Colors.red : null, height: 2, fontSize: 15),
        ));
  }
}
