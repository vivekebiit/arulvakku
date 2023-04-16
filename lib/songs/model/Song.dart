class Song {
  int? sNo;
  int? sSongId;
  String? sTitle;
  String? sCategory;
  int? sCategoryId;
  String? sSong;

  Song(
      {required this.sNo,
      required this.sSongId,
      required this.sTitle,
      required this.sCategory,
      required this.sCategoryId,
      required this.sSong});

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
        sNo: json['sNo'],
        sSongId: json['sSongId'],
        sTitle: json['sTitle'],
        sCategory: json['sCategory'],
        sCategoryId: json['sCategoryId'],
        sSong: json['sSong']);
  }
}
