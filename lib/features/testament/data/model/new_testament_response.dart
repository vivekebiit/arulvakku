class Testament {
  final int? count;
  final String? field1;
  final String? field2;
  final String? field3;
  final String? field4;
  final String? field5;
  final String? field6;
  final String? field7;

  Testament({
    this.count,
    this.field1,
    this.field2,
    this.field3,
    this.field4,
    this.field5,
    this.field6,
    this.field7,
  });

  Testament.fromJson(Map<String, dynamic> json)
      : count = json['count'] as int?,
        field1 = json['field1'] as String?,
        field2 = json['field2'] as String?,
        field3 = json['field3'] as String?,
        field4 = json['field4'] as String?,
        field5 = json['field5'] as String?,
        field6 = json['field6'] as String?,
        field7 = json['field7'] as String?;

  Map<String, dynamic> toJson() => {
    'count' : count,
    'field1' : field1,
    'field2' : field2,
    'field3' : field3,
    'field4' : field4,
    'field5' : field5,
    'field6' : field6,
    'field7' : field7
  };
}