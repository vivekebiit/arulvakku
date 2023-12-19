import 'package:arulvakku/songs/isarmodel/category_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchLocalCategoriesNotifier
    extends StateNotifier<AsyncValue<List<ResultCategory?>>> {
  AsyncValue<List<ResultCategory?>> songCategoryListBackup =
      AsyncData(List.empty());

  AsyncValue<List<ResultCategory?>> providerData;

  SearchLocalCategoriesNotifier(this.providerData)
      : super(const AsyncValue.loading()) {
    _init();
  }

  void _init() async {
    providerData.when(data: (response) {
      try {
        final List<ResultCategory?> resultData = response;
        final dataValue = resultData;
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
              ?.where((e) => e?.sCategory?.contains(text) == true)
              .toList() ??
          List.empty());
    }
  }
}
