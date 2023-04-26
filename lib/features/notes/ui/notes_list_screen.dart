import 'package:arulvakku/common/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/app_ui_dimens.dart';
import '../../../routes/routes.dart';
import '../data/model/notes.dart';
import '../data/provider/notes_provider.dart';

class NotesListScreen extends ConsumerWidget {
  const NotesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var notesListWatcher = ref.watch(fetchNotesFromLocalDatabase);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              dynamic response =
                  await Navigator.of(context).pushNamed(Routes.notes);
              /*if (response is bool && response) {
                notesListWatcher = ref.read(fetchNotesFromLocalDatabase);

              }*/
            },
            child: const Icon(Icons.add)),
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
                child: Column(children: [
              notesListWatcher.when(
                data: (data) {
                  var notesList = data as List<Notes>;
                  return ListView.builder(
                      itemCount: notesList.length,
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Card(
                            child: Padding(
                                padding: const EdgeInsets.all(
                                    AppUIDimens.paddingMedium),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                          Text(
                                            notesList[index].title!,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            notesList[index].message!,
                                          ),
                                        ])),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: Colors.grey[400],
                                    )
                                  ],
                                )),
                          ),
                        );
                      });
                },
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => CommonUtils.screenLoadingWidget(context),
              )
            ]))));
  }
}
