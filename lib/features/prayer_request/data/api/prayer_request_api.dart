import 'package:arulvakku/core/network/dio_client.dart';

class PrayerViewRequestAPI {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  PrayerViewRequestAPI(this._dioClient);

  Future<List<dynamic>> fetchRequestedPrayersApi() async {
    try {
      final res = await _dioClient.get('http://localhost:3000/api/prayers');
      return res.data;
    } catch (e) {
      rethrow;
    }
  }

  /// post prayer request

  Future<Map<String, dynamic>> createPrayersApi(dynamic requestParam) async {
    try {
      final res = await _dioClient.post('http://localhost:3000/api/prayers',
          data: requestParam);
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
