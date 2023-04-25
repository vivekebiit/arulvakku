import 'dart:convert';

import 'package:arulvakku/features/testament/data/model/new_testament_response.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getNewTestament = FutureProvider<dynamic>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  final String response =
      await rootBundle.loadString('assets/json/tbl_newtestament.json');
  final data = await json.decode(response);
  return constructTestamentListObject(data);
});
final getOldTestament = FutureProvider<dynamic>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  final String response =
      await rootBundle.loadString('assets/json/tbl_oldtestament.json');
  final data = await json.decode(response);
  return constructTestamentListObject(data);
});

constructTestamentListObject(dynamic data) async {
  List<Testament> obj = [];
  for (var dat in data) {
    obj.add(Testament.fromJson(dat));
  }
  return obj;
}


