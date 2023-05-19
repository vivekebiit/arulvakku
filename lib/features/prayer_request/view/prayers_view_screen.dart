import 'package:arulvakku/features/prayer_request/provider/prayer_provider.dart';
import 'package:arulvakku/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrayerViewScreen extends ConsumerWidget {
  const PrayerViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(prayerRepositoryProvider);
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                Routes.prayerRequestScreen,
              );
            }),
        body: response.when(
            data: (data) {
              final response = data;
              return ListView.builder(
                  itemCount: response.length,
                  itemBuilder: (BuildContext context, int index) {
                    final res = response[index];
                    return ListTile(title: Text(res['prayer']));
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
