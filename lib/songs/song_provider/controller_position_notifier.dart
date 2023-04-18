import 'package:arulvakku/songs/model/song_cateogry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ControllerPositionNotifier extends StateNotifier<int> {
  final currentPosition;

  ControllerPositionNotifier(this.currentPosition) : super(currentPosition);

  int position(int position) {
    return state = position;
  }
}
