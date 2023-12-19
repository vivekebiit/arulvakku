import 'package:arulvakku/songs/isarmodel/category_model.dart';
import 'package:flutter/material.dart';
import 'package:arulvakku/songs/model/song_cateogry.dart';

class SongCategoryItem extends StatelessWidget {
  final ResultCategory? data;

  const SongCategoryItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(data?.sCategory ?? '--'),
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
