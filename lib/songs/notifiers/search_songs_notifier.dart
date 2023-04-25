import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/Song.dart';

class SearchSongsNotifier extends StateNotifier<AsyncValue<List<dynamic>>> {
  AsyncValue<List<dynamic>> songListBackup = AsyncData(List.empty());

  AsyncValue<dynamic> providerData;

  SearchSongsNotifier(this.providerData) : super(const AsyncValue.loading()) {
    _init();
  }

  void _init() async {
    providerData.when(data: (response) {
      try {
        final List<dynamic>? resultData = (response.data as Map)['Result'];
        final dataValue = resultData ?? List.empty();
        state = AsyncValue.data(dataValue);
        songListBackup = AsyncValue.data(dataValue);
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
      state = songListBackup;
    } else {
      state = AsyncValue.data(songListBackup.value
              ?.where(
                  (e) => Song.fromJson(e).sSong?.contains(text) == true)
              .toList() ??
          List.empty());
    }
  }
}
