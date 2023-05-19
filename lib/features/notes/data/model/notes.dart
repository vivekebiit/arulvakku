class Notes {
  final int? id;
  final String? title;
  final String? message;
  final String? dateTime;

  Notes({this.id, this.title, this.message, this.dateTime});

  Notes.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String?,
        message = json['message'] as String?,
        dateTime = json['date_time'] as String?;

  Map<String, dynamic> toJson() =>
      {'id': id, 'title': title, 'message': message, 'date_time': dateTime};
}
