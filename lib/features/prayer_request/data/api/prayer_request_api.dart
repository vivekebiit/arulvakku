import 'package:arulvakku/core/network/constant/endpoints.dart';
import 'package:arulvakku/core/network/dio_client.dart';

class PrayerRequestAPI {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  PrayerRequestAPI(this._dioClient);

  Future<Map<String, dynamic>> fetchRequestedPrayersApi() async {
    try {
      final res = await _dioClient.get(Endpoints.viewPrayerRequest);
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
