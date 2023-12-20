import 'package:arulvakku/songs/isarmodel/song_title_model.dart';
import 'package:flutter/material.dart';
import 'package:arulvakku/songs/model/Song.dart';

class SongItem extends StatelessWidget {
  final ResultSongTitle? data;

  const SongItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(data?.sTitle ?? '--'),
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
