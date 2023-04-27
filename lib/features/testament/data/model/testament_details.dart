class TestamentDetails {
  final String? field1;
  final String? field2;
  final String? field3;

  TestamentDetails({
    this.field1,
    this.field2,
    this.field3,
  });

  TestamentDetails.fromJson(Map<String, dynamic> json)
      : field1 = json['field1'] as String?,
        field2 = json['field2'] as String?,
        field3 = json['field3'] as String?;

  Map<String, dynamic> toJson() => {
    'field1' : field1,
    'field2' : field2,
    'field3' : field3
  };
}