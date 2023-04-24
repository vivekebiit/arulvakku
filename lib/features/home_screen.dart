import 'package:arulvakku/core/shared_provider/shared_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/app_ui_dimens.dart';
import '../routes/routes.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final listProvider = Provider((_) => [
        "திருவிவிலியம்",
        "பாடல்கள்",
        "வானொலி",
        "செபமாலை",
        "திருச்சிலுவைப்பாதை",
        "செப வேண்டுதல்",
        "திருவழிப்பட்டு நாட்குறிப்பு",
        "உங்கள் கருத்து",
        "தொடர்புக்கு"
      ]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dailyLine = ref.watch(getDailyLine);
    final listMenu = ref.watch(listProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('அருள்வாக்கு'),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.share,
                  size: 20,
                )),
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.notifications_active))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(AppUIDimens.paddingXXSmall),
            child: SingleChildScrollView(
                child: Column(
              children: [
                dailyLine.when(
                    data: (data) {
                      var resultData = data;
                      if (kDebugMode) {
                        print("ResultData $resultData");
                      }
                      return Column(
                        children: [
                          Card(
                            child: Padding(
                                padding: const EdgeInsets.all(
                                    AppUIDimens.paddingMedium),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.accessibility,
                                        ),
                                        const SizedBox(
                                          width: AppUIDimens.marginXXSmall,
                                        ),
                                        Column(
                                          children: [
                                            const Text(
                                              "இன்றைய வாசகம்",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(resultData["verseNo"])
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: AppUIDimens.marginSmall,
                                    ),
                                    Text(resultData["verse"]),
                                    const SizedBox(
                                      height: AppUIDimens.marginSmall,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Expanded(
                                            child: Text(
                                          "www.arulvakku.com",
                                          style: TextStyle(
                                            color: Colors.red,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        )),
                                        Icon(Icons.download_outlined),
                                        SizedBox(
                                          width: AppUIDimens.marginSmall,
                                        ),
                                        Icon(Icons.share_outlined)
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          ListView.builder(
                              itemCount: listMenu.length,
                              primary: false,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    if (listMenu[index] == "பாடல்கள்") {
                                      Navigator.of(context).pushNamed(
                                        Routes.songs,
                                      );
                                    } else if (listMenu[index] ==
                                        "செப வேண்டுதல்") {
                                      Navigator.of(context).pushNamed(
                                        Routes.prayerViewScreen,
                                      );
                                    }
                                  },
                                  child: Card(
                                    child: Padding(
                                        padding: const EdgeInsets.all(
                                            AppUIDimens.marginLarge),
                                        child: Text(
                                          listMenu[index],
                                        )),
                                  ),
                                );
                              })
                        ],
                      );
                    },
                    error: (err, s) => Text(err.toString()),
                    loading: () => const Center(
                          child: CircularProgressIndicator(),
                        )),
              ],
            ))));
  }
}
