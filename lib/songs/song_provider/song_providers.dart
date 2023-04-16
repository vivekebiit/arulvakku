import 'package:arulvakku/songs/model/Song.dart';
import 'package:arulvakku/songs/search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/shared_provider/shared_providers.dart';

final getSongsCategoryListProvider = FutureProvider<dynamic>((ref) async {
  return ref.watch(dioClientProvider).get(
      'https://arulvakku.binaryexpertsystems.com/Arulvakku/GetSongsCategoryList');
});

final getSongsListProvider = FutureProvider.family<dynamic,int>((ref,sCategoryId) async {
  return ref.watch(dioClientProvider).post(
      'https://arulvakku.binaryexpertsystems.com/Arulvakku/GetSongsListByCategory',
      data: toJsonToGetSongs(sCategoryId)
  );
});

final searchProvider = StateNotifierProvider<Search, List<dynamic>>((ref) {
  return Search();
});

Map<String, dynamic> toJsonToGetSongs(int sCategoryId) => {
  'sCategoryId': sCategoryId,
};