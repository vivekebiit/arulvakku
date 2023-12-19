import 'package:isar/isar.dart';
part 'response_format.g.dart';

@Collection()
class ResponseFormat {
  Id id = Isar.autoIncrement;
  String? version;
  String? licensedBy;
  int? statusCode;
  String? requestUri;
  String? method;
  bool? isTransactionDone;

  ResponseFormat({
    required this.version,
    required this.licensedBy,
    required this.statusCode,
    required this.requestUri,
    required this.method,
    required this.isTransactionDone,
  });
}
