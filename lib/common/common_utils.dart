import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;

class CommonUtils {
  CommonUtils._();

  static screenLoadingWidget(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: const [
              CircularProgressIndicator(),
            ]));
  }

  static launchURL(String url, BuildContext context) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else if (context.mounted) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("Couldn't display URL:"),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(url),
              ),
            ],
          );
        },
      );
    }
  }

  static convertIntoPNGAndShare(GlobalKey _globalKey, String text) async {
    try {
      final RenderRepaintBoundary boundary = _globalKey.currentContext!
          .findRenderObject()! as RenderRepaintBoundary;
      final ui.Image image = await boundary.toImage();
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      //var bs64 = base64Encode(pngBytes);

      Directory directory = await getApplicationDocumentsDirectory();
      final String dirPath = '${directory.path}/arulvakku/vasanam';
      await Directory(dirPath).create(recursive: true);
      final String newFilename =
          "$dirPath/arulvakku_vasanam_${DateFormat('MM_dd_yyyy_hh_mm_ss').format(DateTime.now())}.png";
      File file = File(newFilename);
      await file.writeAsBytes(pngBytes);

      /// Share functionality with help of third party library
      Share.shareFiles(
        [file.path],
        subject: "இன்றைய வசனம்",
        text: text,
        // sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size
      );
    } catch (e) {
      print(e);
    }
  }

  static shareText(String text) async {
    try {
      Share.share(text);
    } catch (e) {
      print(e);
    }
  }

  static returnBookID(String id) {
    if (id.trim().length == 1) {
      return "0$id";
    } else {
      return id;
    }
  }

  static returnBookChapter({String id = "01117008"}) {
    // debugPrint("Chapter ${id.substring(2, 5)}");
    if (id.substring(2, 5).startsWith("00")) {
      // debugPrint("Chapter ${int.parse(id.substring(4, 5))}");
      return int.parse(id.substring(4, 5));
    } else if (id.substring(2, 5).startsWith("0")) {
      // debugPrint("Chapter ${int.parse(id.substring(3, 5))}");
      return int.parse(id.substring(3, 5));
    } else {
      // debugPrint("Chapter ${int.parse(id.substring(2, 5))}");
      return int.parse(id.substring(2, 5));
    }
  }

  static returnVerseNo({String id = "01001002"}) {
    // debugPrint(id.substring(5, 8));
    if (id.substring(5, 8).startsWith("00")) {
      return int.parse(id.substring(7, 8));
    } else if (id.substring(5, 8).startsWith("0")) {
      return int.parse(id.substring(6, 8));
    } else {
      return int.parse(id.substring(5, 8));
    }
  }
}
