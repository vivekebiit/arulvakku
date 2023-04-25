import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class Result with _$Result {
  const factory Result({
    required String sCategoryId,
    required String sCategory,
    required String sColorCode,
    required String sCount,
  }) = _Result;

  factory Result.fromJson(Map<String, Object?> json) => _$ResultFromJson(json);
}

@freezed
class Response with _$Response {
  const factory Response({
    required String Version,
    required String LicensedBy,
    required String StatusCode,
    required String RequestUri,
    required String Method,
    required String IsTransactionDone,
    Result? result,
  }) = Response;

  factory Response.fromJson(Map<String, Object?> json) =>
      _$ResponseFromJson(json);
}
