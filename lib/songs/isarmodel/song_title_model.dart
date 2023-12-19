import 'package:arulvakku/songs/isarmodel/category_model.dart';
import 'package:isar/isar.dart';
part 'song_title_model.g.dart';

class SongTitleModel {
  String? version;
  String? licensedBy;
  int? statusCode;
  String? requestUri;
  String? method;
  bool? isTransactionDone;

  List<ResultSongTitle>? result;

  SongTitleModel(
      {this.version,
      this.licensedBy,
      this.statusCode,
      this.requestUri,
      this.method,
      this.isTransactionDone,
      this.result});

  SongTitleModel.fromJson(Map<String, dynamic> json) {
    version = json['Version'];
    licensedBy = json['LicensedBy'];
    statusCode = json['StatusCode'];
    requestUri = json['RequestUri'];
    method = json['Method'];
    isTransactionDone = json['IsTransactionDone'];
    if (json['Result'] != null) {
      result = <ResultSongTitle>[];
      json['Result'].forEach((v) {
        result!.add(ResultSongTitle.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Version'] = version;
    data['LicensedBy'] = licensedBy;
    data['StatusCode'] = statusCode;
    data['RequestUri'] = requestUri;
    data['Method'] = method;
    data['IsTransactionDone'] = isTransactionDone;
    if (result != null) {
      data['Result'] = result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@Collection()
class ResultSongTitle {

  int? sNo;
  Id? sSongId;
  String? sTitle;
  String? sCategory;
  int? sCategoryId;
  String? sSong;

  final titles = IsarLinks<ResultCategory>();

  ResultSongTitle(
      {this.sNo,
      required this.sSongId,
      this.sTitle,
      this.sCategory,
      this.sCategoryId,
      this.sSong});

  ResultSongTitle.fromJson(Map<String, dynamic> json) {
    sNo = json['SNo'];
    sSongId = json['sSongId'];
    sTitle = json['sTitle'];
    sCategory = json['sCategory'];
    sCategoryId = json['sCategoryId'];
    sSong = json['sSong'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['SNo'] = sNo;
    data['sSongId'] = sSongId;
    data['sTitle'] = sTitle;
    data['sCategory'] = sCategory;
    data['sCategoryId'] = sCategoryId;
    data['sSong'] = sSong;
    return data;
  }
}
