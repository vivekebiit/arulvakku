class PrayersViewModel {
  String? version;
  String? licensedBy;
  int? statusCode;
  String? requestUri;
  String? method;
  bool? isTransactionDone;
  List<Result>? result;

  PrayersViewModel(
      {this.version,
      this.licensedBy,
      this.statusCode,
      this.requestUri,
      this.method,
      this.isTransactionDone,
      this.result});

  PrayersViewModel.fromJson(Map<String, dynamic> json) {
    version = json['Version'];
    licensedBy = json['LicensedBy'];
    statusCode = json['StatusCode'];
    requestUri = json['RequestUri'];
    method = json['Method'];
    isTransactionDone = json['IsTransactionDone'];
    if (json['Result'] != null) {
      result = <Result>[];
      json['Result'].forEach((v) {
        result!.add(Result.fromJson(v));
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

class Result {
  int? sCategoryId;
  String? sCategory;
  String? sColorCode;
  int? sCount;

  Result({this.sCategoryId, this.sCategory, this.sColorCode, this.sCount});

  Result.fromJson(Map<String, dynamic> json) {
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
