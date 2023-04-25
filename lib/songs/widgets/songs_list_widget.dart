import 'package:arulvakku/songs/providers/song_providers.dart';
import 'package:arulvakku/songs/widgets/song_lyrics_widget.dart';
import 'package:arulvakku/songs/widgets/songs_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/common_utils.dart';
import '../model/song_cateogry.dart';


class SongsList extends ConsumerStatefulWidget {
  final Result? result;

  const SongsList(this.result, {super.key});

  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends ConsumerState<SongsList> {
  @override
  Widget build(BuildContext context) {
    int  currentPosition = widget.result?.sCategoryId ?? 0;
    final categoryList = ref.watch(searchSongsProvider(currentPosition));

    final myController = ref.watch(searchTextProvider);

    myController.addListener(() {
      ref.read(searchSongsProvider(currentPosition).notifier).search(myController.text);
    });
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.result?.sCategory ?? '--'),
        ),
        body: categoryList.when(
            data: (data) {
              final List<dynamic>? resultData = data;

              // ref.read(searchProvider.notifier).todos = resultData;
              final dataValue = resultData ?? List.empty();
              // ref.read(searchProvider.notifier).init(dataValue);
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      controller: myController,
                      decoration:  InputDecoration(
                        border: const UnderlineInputBorder(),
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                            onPressed: () {
                              ref
                                  .read(searchSongsProvider(currentPosition).notifier)
                                  .search('');
                              ref.read(searchTextProvider.notifier).text('');
                            },
                            icon: const Icon(Icons.close)),
                      ),

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
                                    ref.read(searchTextProvider.notifier).text('');
                                    ref
                                        .read(
                                            controllerPositionProvider.notifier)
                                        .position(index);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SongWidget(
                                                  resultData: dataValue,
                                                  position: index,
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
