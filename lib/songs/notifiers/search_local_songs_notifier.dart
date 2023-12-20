import 'package:arulvakku/songs/isarmodel/category_model.dart';
import 'package:arulvakku/songs/isarmodel/song_title_model.dart';
import 'package:arulvakku/songs/singleton/song_singleton.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/Song.dart';

class SearchLocalSongsNotifier
    extends StateNotifier<AsyncValue<List<ResultSongTitle?>>> {
  AsyncValue<List<ResultSongTitle?>> providerData;
  AsyncValue<List<ResultSongTitle?>> songListBackupBackup =
      AsyncValue.data(List.empty());

  SearchLocalSongsNotifier(this.providerData)
      : super(const AsyncValue.loading()) {
    _init();
  }

  void _init() async {
    providerData.when(data: (response) {
      try {
        final dataValue = response ?? List.empty();
        songListBackupBackup = AsyncValue.data(dataValue);
        state = songListBackupBackup;
        final singleton= SongSingleton();
        singleton.songListBackup = songListBackupBackup;
        songListBackupBackup = AsyncValue.data(dataValue);

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
      state = songListBackupBackup;
    } else {
      state = AsyncValue.data(songListBackupBackup.value
              ?.where((e) => e?.sTitle?.contains(text) == true)
              .toList() ??
          List.empty());
    }
  }
}
