import 'package:arulvakku/common/common_utils.dart';
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
        "செப விண்ணப்பம்",
        "தொடர்புக்கு"
      ]);
  final GlobalKey _globalKey = GlobalKey();

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
                      return Column(
                        children: [
                          Stack(children: [
                            RepaintBoundary(
                                key: _globalKey,
                                child: Card(
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
                                                width:
                                                    AppUIDimens.marginXXSmall,
                                              ),
                                              Column(
                                                children: [
                                                  const Text(
                                                    "இன்றைய  வசனம்",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        CommonUtils.launchURL(
                                                            "https://www.arulvakku.com/index.html",
                                                            context);
                                                      },
                                                      child: const Text(
                                                        "www.arulvakku.com",
                                                        style: TextStyle(
                                                          color: Colors.red,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                      ))),
                                            ],
                                          ),
                                        ],
                                      )),
                                )),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: IconButton(
                                  icon: const Icon(Icons.share_outlined),
                                  onPressed: () async {
                                    await CommonUtils.convertIntoPNGAndShare(
                                        _globalKey,
                                        "https://play.google.com/store/apps/details?id=com.arulvakku&hl=en");
                                  },
                                ))
                          ]),
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
                                        "திருவிவிலியம்") {
                                      Navigator.of(context).pushNamed(
                                        Routes.testament,
                                      );
                                    } else if (listMenu[index] ==
                                        "செப விண்ணப்பம்") {
                                      Navigator.of(context).pushNamed(
                                        Routes.prayerViewScreen,
                                      );
                                    } else if (listMenu[index] ==
                                        "தொடர்புக்கு") {
                                      Navigator.of(context).pushNamed(
                                        Routes.contactUsScreen,
                                      );
                                    }
                                  },
                                  child: Card(
                                    child: Padding(
                                        padding: const EdgeInsets.all(
                                            AppUIDimens.paddingMedium),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Expanded(
                                                child: Text(
                                              listMenu[index],
                                            )),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
                                              color: Colors.grey[400],
                                            )
                                          ],
                                        )),
                                  ),
                                );
                              })
                        ],
                      );
                    },
                    error: (err, s) => Text(err.toString()),
                    loading: () => CommonUtils.screenLoadingWidget(context)),
              ],
            ))));
  }

  sharableWidget(var resultData, BuildContext context) {
    return RepaintBoundary(
        key: _globalKey,
        child: Card(
          child: Padding(
              padding: const EdgeInsets.all(AppUIDimens.paddingMedium),
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
                            "இன்றைய வசனம்",
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                    children: [
                      Expanded(
                          child: GestureDetector(
                              onTap: () {
                                CommonUtils.launchURL(
                                    "https://www.arulvakku.com/index.html",
                                    context);
                              },
                              child: const Text(
                                "www.arulvakku.com",
                                style: TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.underline,
                                ),
                              ))),
                      /* IconButton(
                        icon: const Icon(
                            Icons.share_outlined),
                        onPressed: () async {
                          await CommonUtils
                              .convertIntoPNGAndShare(
                              _globalKey,
                              "https://play.google.com/store/apps/details?id=com.arulvakku&hl=en");
                        },
                      )*/
                    ],
                  ),
                ],
              )),
        ));
  }
}
