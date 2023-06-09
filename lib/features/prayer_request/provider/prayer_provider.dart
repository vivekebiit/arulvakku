import 'package:arulvakku/core/shared_provider/shared_providers.dart';
import 'package:arulvakku/features/prayer_request/data/api/prayer_request_api.dart';
import 'package:arulvakku/features/prayer_request/repository/prayer_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networnConnectionProdiver = Provider<PrayerViewRequestAPI>((ref) {
  return PrayerViewRequestAPI(ref.read(dioClientProvider));
});

final prayerRepositoryProvider = FutureProvider<dynamic>((ref) async {
  return PrayerRepository(ref.watch(networnConnectionProdiver))
      .fetchPrayersRequested();
});

final createPrayerRequestProvider =
    FutureProvider.autoDispose.family<dynamic, dynamic>((ref, requestParams) {
  return PrayerRepository(ref.watch(networnConnectionProdiver))
      .sendPrayerRequest(requestParams);
});
