class Result {
  int? sCategoryId;
  String? sCategory;
  String? sColorCode;
  int? sCount;

  Result(
      {required this.sCategoryId,
      required this.sCategory,
      required this.sColorCode,
      required this.sCount});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      sCategoryId: json['sCategoryId'],
      sCategory: json['sCategory'],
      sColorCode: json['sColorCode'],
      sCount: json['sCount'],
    );
  }


}
