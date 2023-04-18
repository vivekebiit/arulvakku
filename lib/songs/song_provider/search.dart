import 'package:arulvakku/songs/model/song_cateogry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Search extends StateNotifier<List<dynamic>> {
  Search() : super([]);

  List<dynamic> init(List<dynamic> list) {
    state = [
      {for (final song in list) song}
    ];
    return state;
  }

  List<dynamic> getAll() {
    state = [
      {for (final song in state) song}
    ];
    return state;
  }

  List<dynamic> search(String text) {
    state = [
      if (text.isEmpty)
        getAll()
      else
        {
          for (final song in state)
            {if (Result.fromJson(song).sCategory == text) song as dynamic}
        }
    ];
    return state;
  }
}
