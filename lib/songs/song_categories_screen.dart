import 'package:arulvakku/songs/model/song_cateogry.dart';
import 'package:arulvakku/songs/song_category_item.dart';
import 'package:arulvakku/songs/song_provider/song_providers.dart';
import 'package:arulvakku/songs/songs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SongCategories extends ConsumerStatefulWidget {
  const SongCategories({Key? key}) : super(key: key);

  @override
  _SongCategoriesState createState() => _SongCategoriesState();
}

class _SongCategoriesState extends ConsumerState<SongCategories> {
  @override
  Widget build(BuildContext context) {
    final categoryList = ref.watch(getSongsCategoryListProvider);
    final searchSongCategory = ref.watch(searchProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('பாடல்கள்'),
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
                        ref.read(searchProvider.notifier).search(text);
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
                                        Result.fromJson(dataValue[index]);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SongsList(result)));
                                  },
                                  child:
                                      SongCategoryItem(data: dataValue[index]));
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
