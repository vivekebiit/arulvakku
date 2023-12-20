import 'package:arulvakku/songs/isarmodel/song_title_model.dart';
import 'package:arulvakku/songs/providers/song_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import 'package:arulvakku/songs/model/Song.dart';

class SongWidget extends ConsumerStatefulWidget {
  final List<ResultSongTitle?>? resultData;
  final int position;

  const SongWidget({Key? key, required this.resultData, required this.position})
      : super(key: key);

  @override
  _SongWidgetState createState() => _SongWidgetState();
}

class _SongWidgetState extends ConsumerState<SongWidget> {
  String? lyrics;
  @override
  Widget build(BuildContext context) {
    final songs = widget.resultData ?? List.empty();
    List<ResultSongTitle>.empty();

    int position = ref.watch(controllerPositionProvider);

    final PageController controller =
        PageController(initialPage: widget.position);

    return Scaffold(
      appBar: AppBar(
        title: Text(songs[position]?.sTitle ?? '--'),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                onPressed: () {
                  Share.share(lyrics ?? '');
                },
              )),
        ],
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: songs.length,
        onPageChanged: (index) {
          ref.read(controllerPositionProvider.notifier).position(index);
        },
        itemBuilder: (context, index) {
          lyrics = songs[index]?.sSong ?? '--';
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    lyrics ?? '--',
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
