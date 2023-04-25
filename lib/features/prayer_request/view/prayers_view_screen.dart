import 'package:arulvakku/features/prayer_request/data/models/prayers_view_model.dart';
import 'package:arulvakku/features/prayer_request/provider/prayer_provider.dart';
import 'package:arulvakku/routes/routes.dart';
import 'package:arulvakku/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrayerViewScreen extends ConsumerWidget {
  const PrayerViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchedPrayers = ref.watch(prayerRepositoryProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.sebaVenduthal),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.of(context).pushNamed(
            Routes.prayerRequestScreen,
          );
        }),
        body: fetchedPrayers.when(
            data: (data) {
              final response = data as PrayersViewModel;
              return ListView.builder(
                  itemCount: response.result?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    final song = response.result?[index];
                    return ListTile(
                        leading: const Icon(Icons.list),
                        trailing: const Text(
                          "GFG",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        title: Text(song?.sCategory ?? ""));
                  });
            },
            error: (err, s) => Text(err.toString()),
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}
