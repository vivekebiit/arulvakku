import 'package:arulvakku/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../common/app_ui_dimens.dart';
import '../../../common/database_utils.dart';
import '../../../widget/custom_button.dart';
import '../data/model/notes.dart';

class NewNoteScreen extends StatefulWidget {
  const NewNoteScreen({Key? key}) : super(key: key);

  @override
  State<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends State<NewNoteScreen> {
  TextEditingController mTitleController = TextEditingController();
  TextEditingController mMessageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode mode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    var titleField = CustomTextField(controller: mTitleController);
    titleField.hint = "Title";
    titleField.validator = (arg) {
      if (arg!.trim().isEmpty) {
        return "Title cannot be blank";
      } else {
        return null;
      }
    };
    var messageField = CustomTextField(controller: mMessageController);

    messageField.maxLines = null;
    messageField.minLines = 10;
    messageField.maxLength = 500;
    messageField.maxCount = 500;
    messageField.textInputType = TextInputType.multiline;
    messageField.hint = "Message";
    messageField.textAlign = TextAlign.start;
    messageField.validator = (arg) {
      if (arg!.trim().isEmpty) {
        return "Message cannot be blank";
      } else {
        return null;
      }
    };

    final button = CustomButton(
      label: 'Save',
      arrowVisible: false,
    );
    button.onPressed = () async {
      if (_formKey.currentState!.validate()) {
        dynamic response = await DBProvider.db.newEmail(Notes(
            message: mMessageController.text, title: mTitleController.text));

        if (response is int) {
          debugPrint("Success $response");
          mTitleController.clear();
          mMessageController.clear();
          Navigator.pop(this.context, true);
        }
      } else {
        setState(() {
          mode = AutovalidateMode.always;
        });
      }
    };
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
      body: SingleChildScrollView(
        child: Form(
            autovalidateMode: mode,
            key: _formKey,
            child: Padding(
                padding: const EdgeInsets.all(AppUIDimens.paddingMedium),
                child: Column(
                  children: [
                    titleField,
                    const SizedBox(
                      height: 20,
                    ),
                    messageField,
                    const SizedBox(
                      height: 20,
                    ),
                    button
                  ],
                ))),
      ),
    );
  }
}
