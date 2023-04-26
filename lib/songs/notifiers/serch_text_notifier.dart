import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchTextNotifier extends StateNotifier<TextEditingController> {
  SearchTextNotifier() : super(TextEditingController(text: ''));
  void text(String text) {
    state.text=text;
  }
}
