import 'package:arulvakku/features/prayer_request/provider/prayer_provider.dart';
import 'package:arulvakku/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrayerRequestScreen extends ConsumerWidget {
  PrayerRequestScreen({super.key});

  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController placeTextController = TextEditingController();
  final TextEditingController intensionTextController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formkey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Visibility(
                  visible: false,
                  child: Text(
                    AppConstants.sebVendutalInfo,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                minLines: 1,
                maxLines: 1,
                controller: nameTextController,
                textInputAction: TextInputAction.none,
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "பெயர்"; //பெயர்
                  }
                  return null;
                },
                decoration: InputDecoration(
                    contentPadding: conentPadding(),
                    hintText: 'பெயர்',
                    label: const Text('பெயர்'),
                    border: outLineInputBorder()),
                autofocus: false,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                minLines: 1,
                maxLines: 1,
                controller: placeTextController,
                textInputAction: TextInputAction.none,
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "இடம்"; //இடம்
                  }
                  return null;
                },
                decoration: InputDecoration(
                  contentPadding: conentPadding(),
                  hintText: 'இடம்',
                  label: const Text('இடம்'),
                  border: outLineInputBorder(),
                ),
                autofocus: false,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                minLines: 10,
                maxLines: 20,
                controller: intensionTextController,
                textInputAction: TextInputAction.none,
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "வேண்டுதல்"; //வேண்டுதல்
                  }
                  return null;
                },
                decoration: InputDecoration(
                    contentPadding: conentPadding(),
                    hintText: 'வேண்டுதல்',
                    label: const Text('வேண்டுதல்'),
                    border: outLineInputBorder()),
                autofocus: false,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          final req = {
                            "name": nameTextController.text.toString().trim(),
                            "place": placeTextController.text.toString().trim(),
                            "prayer":
                                intensionTextController.text.toString().trim(),
                            "response": "",
                            "fcm": "12222222222222222222222222"
                          };
                          final response =
                              ref.watch(createPrayerRequestProvider(req));
                        } else {}
                      },
                      child: const Text('அனுப்பு')))
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets conentPadding() {
    return const EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 18);
  }

  OutlineInputBorder outLineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        width: 5,
        color: Colors.red,
      ),
    );
  }
}
