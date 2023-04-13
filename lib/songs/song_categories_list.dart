import 'package:arulvakku/songs/song_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/shared_provider/shared_providers.dart';

class SongCategories extends ConsumerWidget {
  const SongCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final categoryList = ref.watch(getSongsCategoryList);
    return Scaffold(
        appBar: AppBar(
          title: const Text('அருள்வாக்கு பாடல்கள்'),
        ),
        body: categoryList.when(
            data: (data) {
              final List<dynamic>? resultData = (data.data as Map)['Result'];
              if ((resultData?.length ?? 0) > 0) {
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
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: resultData?.length ?? 0,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {},
                              child:
                                  SongCategoryItem(data: resultData![index]));
                        },
                      ),
                    )
                  ],
                );
              } else {
                return const Center(
                  child: Text('No data Found'),
                );
              }
            },
            error: (err, s) => Text(err.toString()),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
