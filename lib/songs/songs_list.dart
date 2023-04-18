import 'package:arulvakku/songs/song_provider/song_providers.dart';
import 'package:arulvakku/songs/song_widget.dart';
import 'package:arulvakku/songs/songs_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model/Song.dart';
import 'model/song_cateogry.dart';

class SongsList extends ConsumerStatefulWidget {
  final Result? result;

  const SongsList(this.result, {super.key});

  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends ConsumerState<SongsList> {
  @override
  Widget build(BuildContext context) {
    final categoryList =
        ref.watch(getSongsListProvider(widget.result?.sCategoryId ?? 0));

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.result?.sCategory ?? '--'),
        ),
        body: categoryList.when(
            data: (data) {
              final List<dynamic>? resultData = (data.data as Map)['Result'];

              // ref.read(searchProvider.notifier).todos = resultData;
              final dataValue = resultData ?? List.empty();
              // ref.read(searchProvider.notifier).init(dataValue);
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: '',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.close),
                      ),
                      onChanged: (text) {
                        // ref.read(searchProvider.notifier).search(text);
                      },
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
                                    final result =
                                        Song.fromJson(dataValue[index]);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SongWidget(resultData: dataValue,position: index,)));
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
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
