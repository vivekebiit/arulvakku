import 'package:arulvakku/core/shared_provider/shared_providers.dart';
import 'package:arulvakku/features/prayer_request/data/api/prayer_request_api.dart';
import 'package:arulvakku/features/prayer_request/data/repository/prayer_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networnConnectionProdiver = Provider<PrayerRequestAPI>((ref) {
  return PrayerRequestAPI(ref.read(dioClientProvider));
});

final prayerRepositoryProvider = FutureProvider<dynamic>((ref) async {
  return PrayerRepository(ref.watch(networnConnectionProdiver)).fetchPrayers();
});
