import 'dart:convert';

import 'package:arulvakku/service/isa_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../network/dio_client.dart';
import '../shared_preferences/helper.dart';
import '../shared_preferences/preferences.dart';

final dioInstanceProvider = Provider<Dio>((ref) {
  return Dio();
});

final isarInstanceProvider = Provider<IsarService>((ref){
  return IsarService();
});

final dioClientProvider = Provider<DioClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return DioClient(dio);
});

final preferencesProvider = Provider<Preference>((ref) {
  return Preference();
});

final sharedPrefHelperProvider = Provider<SharedPreferenceHelper>((ref) {
  return SharedPreferenceHelper(ref.read(preferencesProvider));
});


final getDailyLine = FutureProvider<dynamic>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  final String response =
      await rootBundle.loadString('assets/json/daily_verses.json');
  final data = await json.decode(response);
  for (var obj in data) {
    if (obj["date"] == DateFormat("ddMMyyyy").format(DateTime.now())) {
      print("object $obj");
      return obj;
    }
  }
  return response;
});

Future<dynamic> readJson() async {
  final String response =
      await rootBundle.loadString('assets/json/daily_verses.json');
  final data = await json.decode(response);
  for (var obj in data) {
    if (obj["date"] == DateFormat("ddMMyyyy").format(DateTime.now())) {
      print("object $obj");
      return obj;
    }
  }
  return response;
}

