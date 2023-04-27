import 'package:arulvakku/common/app_ui_dimens.dart';
import 'package:arulvakku/common/common_utils.dart';
import 'package:arulvakku/features/testament/data/model/testament_details.dart';
import 'package:arulvakku/features/testament/tabs/new_testament_screen.dart';
import 'package:arulvakku/features/testament/tabs/old_testament_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/arguments.dart';
import '../../utilities/constants.dart';
import 'data/testament_detail_provider.dart';

class TestamentDetailScreen extends ConsumerWidget {
  final Argument argument;

  const TestamentDetailScreen({super.key, required this.argument});

  static int chapterNo = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watcher = ref.watch(getTestamentDetails);
    return Scaffold(
      appBar: AppBar(
        title: Text(argument.bookName),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
                size: 20,
              )),
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.note_add_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(AppUIDimens.paddingMedium),
            child: Column(
              children: [
                watcher.when(
                  data: (data) {
                    List<TestamentDetails> resultData =
                        data as List<TestamentDetails>;
                    // debugPrint("data $data");
                    return ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (context, index) {
                          bool showChapter = false;
                          if (chapterNo !=
                              CommonUtils.returnBookChapter(
                                  id: resultData[index].field1!)) {
                            showChapter = true;
                            chapterNo = CommonUtils.returnBookChapter(
                                id: resultData[index].field1!);
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (showChapter)
                                const SizedBox(
                                  height: AppUIDimens.paddingSmall,
                                ),
                              if (showChapter)
                                Text(
                                  "${AppConstants.chapter}. ${CommonUtils.returnBookChapter(id: resultData[index].field1!)}",
                                  style: const TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              const SizedBox(
                                height: AppUIDimens.paddingSmall,
                              ),
                              if (resultData[index].field3 == "T")
                                Center(child:Text(
                                  resultData[index].field2!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                              if (resultData[index].field3 == "V")
                                Text(
                                    "${CommonUtils.returnVerseNo(id: resultData[index].field1!)}. ${resultData[index].field2!}"),
                            ],
                          );
                        },
                        itemCount: resultData.length);
                  },
                  error: (error, stackTrace) {
                    return Text("Error :  ${error.toString()}");
                  },
                  loading: () {
                    return CommonUtils.screenLoadingWidget(context);
                  },
                )
              ],
            )),
      ),
    );
  }
}