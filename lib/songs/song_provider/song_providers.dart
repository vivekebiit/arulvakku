import 'package:arulvakku/songs/song_provider/controller_position_notifier.dart';
import 'package:arulvakku/songs/song_provider/search_categories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/shared_provider/shared_providers.dart';

final getSongsCategoryListProvider = FutureProvider<dynamic>((ref) async {
  return ref.watch(dioClientProvider).get(
      'https://arulvakku.binaryexpertsystems.com/Arulvakku/GetSongsCategoryList');
});

final getSongsListProvider =
    FutureProvider.family<dynamic, int>((ref, sCategoryId) async {
  return ref.watch(dioClientProvider).post(
      'https://arulvakku.binaryexpertsystems.com/Arulvakku/GetSongsListByCategory',
      data: toJsonToGetSongs(sCategoryId));
});

final searchProvider =
    StateNotifierProvider<SearchCategories, AsyncValue<dynamic>>((ref) {
  final data = ref.watch(getSongsCategoryListProvider);

  return SearchCategories(data);
});

final controllerPositionNotifier =
    StateNotifierProvider<ControllerPositionNotifier, int>((ref) {
  return ControllerPositionNotifier();
});

Map<String, dynamic> toJsonToGetSongs(int sCategoryId) => {
      'sCategoryId': sCategoryId,
    };
