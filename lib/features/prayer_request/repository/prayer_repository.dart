import 'dart:developer';

import 'package:arulvakku/core/network/dio_exceptions.dart';
import 'package:arulvakku/features/prayer_request/data/api/prayer_request_api.dart';
import 'package:arulvakku/features/prayer_request/data/models/prayers_view_model.dart';
import 'package:dio/dio.dart';

class PrayerRepository {
  final PrayerRequestAPI productApi;

  PrayerRepository(this.productApi);

  Future<PrayersViewModel> fetchPrayersRequested() async {
    try {
      final res = await productApi.fetchRequestedPrayersApi();
      final productModel = PrayersViewModel.fromJson(res);
      return productModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
