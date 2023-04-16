import 'package:arulvakku/songs/model/Song.dart';
import 'package:flutter/material.dart';

class SongWidget extends StatelessWidget {
  final Song song;

  const SongWidget({Key? key, required this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.sTitle ?? '--'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                song.sSong ?? '--',
              ),
            )
          ],
        ),
      ),
    );
  }
}
