import 'dart:math';

import 'package:arulvakku/core/shared_provider/shared_providers.dart';
import 'package:arulvakku/songs/isarmodel/category_model.dart';
import 'package:arulvakku/songs/isarmodel/song_title_model.dart';
import 'package:arulvakku/songs/providers/song_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SongsCountProvider extends StateNotifier<int> {
  Stream<List<ResultSongTitle>> songsCount ;

  SongsCountProvider(this.songsCount) : super(0) {
    _init();
  }

  void _init() {
    // state = songsCount.length;
  }
}
