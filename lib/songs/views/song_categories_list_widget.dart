import 'package:arulvakku/songs/providers/song_providers.dart';
import 'package:arulvakku/songs/views/songs_list_widget.dart';
import 'package:arulvakku/songs/widgets/song_category_item_widget.dart';


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:arulvakku/common/common_utils.dart';
import 'package:arulvakku/songs/model/song_cateogry.dart';


class SongCategories extends ConsumerStatefulWidget {
  const SongCategories({Key? key}) : super(key: key);

  @override
  _SongCategoriesState createState() => _SongCategoriesState();
}

class _SongCategoriesState extends ConsumerState<SongCategories> {
  @override
  Widget build(BuildContext context) {
    final searchSongCategory = ref.watch(searchCategoriesProvider);
    final myController = ref.watch(searchCategoryTextProvider);

    myController.addListener(() {
      ref.read(searchCategoriesProvider.notifier).search(myController.text);
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text('பாடல்கள்'),
        ),
        body: searchSongCategory.when(
            data: (data) {
              final List<dynamic>? resultData = data;
              final dataValue = resultData ?? List.empty();

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
                                    .read(searchCategoriesProvider.notifier)
                                    .search('');
                                ref
                                    .read(searchCategoryTextProvider.notifier)
                                    .text('');
                              },
                              icon: const Icon(Icons.close)),
                          contentPadding: const EdgeInsets.all(12)),
                      /*onChanged: (text) {
                          ref
                              .read(searchCategoriesProvider.notifier)
                              .search(text);
                        }*/
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
            loading: () => CommonUtils.screenLoadingWidget(context)));
  }
}
