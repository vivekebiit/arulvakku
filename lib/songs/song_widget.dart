import 'package:arulvakku/songs/model/Song.dart';
import 'package:arulvakku/songs/song_provider/song_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SongWidget extends ConsumerStatefulWidget {
  final List<dynamic>? resultData;
  final int position;

  const SongWidget({Key? key, required this.resultData, required this.position})
      : super(key: key);

  @override
  _SongWidgetState createState() => _SongWidgetState();
}

class _SongWidgetState extends ConsumerState<SongWidget> {
  @override
  Widget build(BuildContext context) {
    final songs = widget.resultData?.map((e) => Song.fromJson(e)).toList() ??
        List<Song>.empty();

    int position = ref.watch(controllerPositionNotifier);

    final PageController controller =
        PageController(initialPage: widget.position);

    return Scaffold(
      appBar: AppBar(
        title: Text(songs[position].sTitle ?? '--'),
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: songs.length,
        onPageChanged: (index) {
          ref.read(controllerPositionNotifier.notifier).position(index);
        },
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    songs[index].sSong ?? '--',
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
