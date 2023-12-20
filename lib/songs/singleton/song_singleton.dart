import 'package:arulvakku/songs/isarmodel/song_title_model.dart';
import 'package:arulvakku/songs/model/Song.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SongSingleton {
  static final SongSingleton _singleton = SongSingleton._internal();
  AsyncValue<List<ResultSongTitle?>> songListBackup = AsyncData(List.empty());

  factory SongSingleton() {
    return _singleton;
  }

  SongSingleton._internal();
}