import 'dart:convert';

import 'package:arulvakku/features/testament/data/model/new_testament_response.dart';
import 'package:arulvakku/features/testament/data/model/testament_details.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getTestamentDetails = FutureProvider<dynamic>((ref) async {
  await Future.delayed(const Duration(seconds: 1));
  final String response =
      await rootBundle.loadString('assets/json/t_mybibleview.json');
  final data = await json.decode(response);
  return constructTestamentListObject(data);
});

constructTestamentListObject(dynamic data) async {
  List<TestamentDetails> obj = [];
  for (var dat in data) {
    if(dat["field1"].toString().startsWith("01")) {
      obj.add(TestamentDetails.fromJson(dat));
    }
  }
  return obj;
}
