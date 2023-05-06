import 'package:flutter/material.dart';
import 'package:arulvakku/songs/model/song_cateogry.dart';

class SongCategoryItem extends StatelessWidget {
  final dynamic data;

  const SongCategoryItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = Result.fromJson(data);
    return Column(
      children: [
        ListTile(
          title: Text(result.sCategory ?? '--'),
          leading: const Icon(Icons.library_music_rounded),
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
