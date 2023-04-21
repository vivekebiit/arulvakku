import 'package:arulvakku/songs/model/song_cateogry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchCategories extends StateNotifier<AsyncValue<List<dynamic>>> {
  AsyncValue<List<dynamic>> songCategoryListBackup = AsyncData(List.empty());

  AsyncValue<dynamic> providerData;

  SearchCategories(this.providerData) : super(const AsyncValue.loading()) {
    _init();
  }

  void _init() async {
    providerData.when(data: (response) {
      try {
        final List<dynamic>? resultData = (response.data as Map)['Result'];
        final dataValue = resultData ?? List.empty();
        state = AsyncValue.data(dataValue);
        songCategoryListBackup = AsyncValue.data(dataValue);
      } catch (err, stack) {
        state = AsyncValue.error(err, stack);
      }
    }, error: (err, message) {
      state = AsyncValue.error(err, message);
    }, loading: () {
      state = const AsyncValue.loading();
    });
  }

  void search(String text) {
    if (text.isEmpty) {
      state = songCategoryListBackup;
    } else {
      state = AsyncValue.data(songCategoryListBackup.value
              ?.where(
                  (e) => Result.fromJson(e).sCategory?.contains(text) == true)
              .toList() ??
          List.empty());
    }
  }
}
