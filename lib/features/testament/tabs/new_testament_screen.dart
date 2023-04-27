import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/app_ui_dimens.dart';
import '../../../common/common_utils.dart';
import '../../../routes/routes.dart';
import '../data/model/new_testament_response.dart';
import '../data/testament_provider.dart';

class NewTestamentScreen extends ConsumerWidget {
  NewTestamentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newTestament = ref.watch(getNewTestament);
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          newTestament.when(
              data: (data) {
                List<Testament> resultData = data as List<Testament>;
                return ListView.separated(
                  itemCount: resultData.length,
                  primary: false,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey[200],
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          Routes.testamentDetails,
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.all(AppUIDimens.paddingMedium),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: Row(children: [
                              Text(
                                "${index + 1}. ",
                                style: const TextStyle(fontSize: 15),
                              ),
                              Text(resultData[index].field4!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500))
                            ])),
                            Text("${resultData[index].count!} அதி.",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey)),
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => CommonUtils.screenLoadingWidget(context))
        ],
      )),
    );
  }
}
