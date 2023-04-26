import 'package:arulvakku/songs/notifiers/controller_position_notifier.dart';
import 'package:arulvakku/songs/notifiers/search_categories_notifier.dart';
import 'package:arulvakku/songs/notifiers/search_songs_notifier.dart';
import 'package:arulvakku/songs/notifiers/serch_text_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/shared_provider/shared_providers.dart';

final getSongsCategoryListProvider = FutureProvider.autoDispose<dynamic>((ref) async {
  return ref.watch(dioClientProvider).get(
      'https://arulvakku.binaryexpertsystems.com/Arulvakku/GetSongsCategoryList');
});

final getSongsListProvider =
    FutureProvider.autoDispose.family<dynamic, int>((ref, sCategoryId) async {
  return ref.watch(dioClientProvider).post(
      'https://arulvakku.binaryexpertsystems.com/Arulvakku/GetSongsListByCategory',
      data: toJsonToGetSongs(sCategoryId));
});

final searchCategoriesProvider =
    StateNotifierProvider.autoDispose<SearchCategoriesNotifier, AsyncValue<dynamic>>((ref) {
  final data = ref.watch(getSongsCategoryListProvider);
  return SearchCategoriesNotifier(data);
});

final searchSongsProvider =
    StateNotifierProvider.autoDispose.family<SearchSongsNotifier, AsyncValue<dynamic>, int>(
        (ref, sCategoryId) {
  final data = ref.watch(getSongsListProvider(sCategoryId));
  return SearchSongsNotifier(data);
});

final controllerPositionProvider =
    StateNotifierProvider<ControllerPositionNotifier, int>((ref) {
  return ControllerPositionNotifier();
});

final searchCategoryTextProvider = StateNotifierProvider.autoDispose<SearchTextNotifier, TextEditingController>(
    (ref) => SearchTextNotifier());

final searchSongTextProvider = StateNotifierProvider.autoDispose<SearchTextNotifier, TextEditingController>(
        (ref) => SearchTextNotifier());

Map<String, dynamic> toJsonToGetSongs(int sCategoryId) => {
      'sCategoryId': sCategoryId,
    };
