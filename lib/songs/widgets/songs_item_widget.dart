import 'package:flutter/material.dart';

import '../model/Song.dart';


class SongItem extends StatelessWidget {
  final dynamic data;

  const SongItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = Song.fromJson(data);
    return Column(
      children: [
        ListTile(
          title: Text(result.sTitle ?? '--'),
          leading: const Icon(Icons.music_note),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 16,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        ),
        const Divider()
      ],
    );
  }
}
