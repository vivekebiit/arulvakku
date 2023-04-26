class Notes {
  final int? id;
  final String? title;
  final String? message;

  Notes({
    this.id,
    this.title,
    this.message,
  });

  Notes.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String?,
        message = json['message'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'message': message
      };
}
