class Argument {
  final String bookId;
  final String bookName;
  final Map<String, String>? notesObj;

  Argument(
      {required this.bookId, required this.bookName,  this.notesObj});
}
