import 'dart:developer';

import 'package:arulvakku/songs/isarmodel/category_model.dart';
import 'package:arulvakku/songs/isarmodel/song_title_model.dart';
import 'package:arulvakku/songs/providers/song_providers.dart';
import 'package:arulvakku/songs/views/song_lyrics_widget.dart';
import 'package:arulvakku/songs/widgets/songs_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:arulvakku/common/common_utils.dart';
import 'package:arulvakku/songs/model/song_cateogry.dart';
import 'package:arulvakku/songs/singleton/song_singleton.dart';

class SongsList extends ConsumerStatefulWidget {
  final ResultCategory? result;

  const SongsList(this.result, {super.key});

  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends ConsumerState<SongsList> {
  @override
  Widget build(BuildContext context) {
    int currentPosition = widget.result?.sCategoryId ?? 0;
    final categoryList = ref.watch(searchLocalSongsProvider(currentPosition));

    final myController = ref.watch(searchSongTextProvider);

    myController.addListener(() {
      ref
          .read(searchLocalSongsProvider(currentPosition).notifier)
          .search(myController.text);
    });
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.result?.sCategory ?? '--'),
        ),
        body: categoryList.when(
            data: (data) {
              final List<ResultSongTitle?> resultData = data;

              // ref.read(searchProvider.notifier).todos = resultData;
              final dataValue = resultData ?? List.empty();
              // ref.read(searchProvider.notifier).init(dataValue);

              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextFormField(
                      controller: myController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: IconButton(
                              onPressed: () {
                                ref
                                    .read(searchLocalSongsProvider(currentPosition)
                                        .notifier)
                                    .search('');
                                ref
                                    .read(searchSongTextProvider.notifier)
                                    .text('');
                              },
                              icon: const Icon(Icons.close)),
                          contentPadding: const EdgeInsets.all(12)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  dataValue.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            itemCount: dataValue.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    currentPosition = index;

                                    final singleton = SongSingleton();
                                    final allSongs =
                                        singleton.songListBackup.value ??
                                            List.empty();
                                    final position = allSongs.indexWhere(
                                        ((element) =>
                                            element?.sSongId ==
                                            dataValue[index]?.sSongId));
                                    ref
                                        .read(
                                            controllerPositionProvider.notifier)
                                        .position(position);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SongWidget(
                                                  resultData: allSongs,
                                                  position: position,
                                                )));
                                  },
                                  child: SongItem(data: dataValue[index]));
                            },
                          ),
                        )
                      : const Center(
                          child: Text('No data Found'),
                        ),
                ],
              );
            },
            error: (err, s) => Text(err.toString()),
            loading: () => CommonUtils.screenLoadingWidget(context)));
  }
}
