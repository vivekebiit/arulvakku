import 'package:arulvakku/songs/isarmodel/song_title_model.dart';
import 'package:isar/isar.dart';
part 'category_model.g.dart';

class CategoryModel {
  String? version;
  String? licensedBy;
  int? statusCode;
  String? requestUri;
  String? method;
  bool? isTransactionDone;
  List<ResultCategory>? result;

  CategoryModel(
      {this.version,
      this.licensedBy,
      this.statusCode,
      this.requestUri,
      this.method,
      this.isTransactionDone,
      this.result});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    version = json['Version'];
    licensedBy = json['LicensedBy'];
    statusCode = json['StatusCode'];
    requestUri = json['RequestUri'];
    method = json['Method'];
    isTransactionDone = json['IsTransactionDone'];
    if (json['Result'] != null) {
      result = <ResultCategory>[];
      json['Result'].forEach((v) {
        result!.add(ResultCategory.fromJson(v));
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
class ResultCategory {
  Id? sCategoryId;
  String? sCategory;
  String? sColorCode;
  int? sCount;

   @Backlink(to: "titles")
  final songTitles = IsarLinks<ResultSongTitle>();

  ResultCategory(
      {this.sCategoryId, this.sCategory, this.sColorCode, this.sCount});

  ResultCategory.fromJson(Map<String, dynamic> json) {
    sCategoryId = json['sCategoryId'];
    sCategory = json['sCategory'];
    sColorCode = json['sColorCode'];
    sCount = json['sCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sCategoryId'] = sCategoryId;
    data['sCategory'] = sCategory;
    data['sColorCode'] = sColorCode;
    data['sCount'] = sCount;
    return data;
  }
}
