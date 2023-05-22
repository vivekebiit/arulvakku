class Notes {
  final int? id;
  final String? title;
  final String? message;
  final String? dateTime;
  final String? verses;

  Notes({this.id, this.title, this.message, this.dateTime, this.verses});

  Notes.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String?,
        message = json['message'] as String?,
        verses = json['verses'] as String?,
        dateTime = json['date_time'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'message': message,
        'verses': verses,
        'date_time': dateTime
      };
}
