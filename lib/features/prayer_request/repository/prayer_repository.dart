import 'dart:developer';

import 'package:arulvakku/core/network/dio_exceptions.dart';
import 'package:arulvakku/features/prayer_request/data/api/prayer_request_api.dart';
import 'package:arulvakku/features/prayer_request/data/models/prayer_request_model.dart';
import 'package:dio/dio.dart';

class PrayerRepository {
  final PrayerViewRequestAPI productApi;

  PrayerRepository(this.productApi);

  Future<List<dynamic>> fetchPrayersRequested() async {
    try {
      final res = await productApi.fetchRequestedPrayersApi();
      final productModel = res;
      return productModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }

  Future<PrayerRequestModel> sendPrayerRequest(dynamic requestParams) async {
    try {
      final res = await productApi.createPrayersApi(requestParams);
      final resModel = PrayerRequestModel.fromJson(res);
      return resModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
