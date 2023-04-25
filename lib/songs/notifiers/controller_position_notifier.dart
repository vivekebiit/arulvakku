import 'package:flutter_riverpod/flutter_riverpod.dart';

class ControllerPositionNotifier extends StateNotifier<int> {
  ControllerPositionNotifier() : super(0);
  int position(int position) {
    return state = position;
  }
}
