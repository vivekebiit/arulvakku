// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_format.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetResponseFormatCollection on Isar {
  IsarCollection<ResponseFormat> get responseFormats => this.collection();
}

const ResponseFormatSchema = CollectionSchema(
  name: r'ResponseFormat',
  id: -2074907291685019251,
  properties: {
    r'isTransactionDone': PropertySchema(
      id: 0,
      name: r'isTransactionDone',
      type: IsarType.bool,
    ),
    r'licensedBy': PropertySchema(
      id: 1,
      name: r'licensedBy',
      type: IsarType.string,
    ),
    r'method': PropertySchema(
      id: 2,
      name: r'method',
      type: IsarType.string,
    ),
    r'requestUri': PropertySchema(
      id: 3,
      name: r'requestUri',
      type: IsarType.string,
    ),
    r'statusCode': PropertySchema(
      id: 4,
      name: r'statusCode',
      type: IsarType.long,
    ),
    r'version': PropertySchema(
      id: 5,
      name: r'version',
      type: IsarType.string,
    )
  },
  estimateSize: _responseFormatEstimateSize,
  serialize: _responseFormatSerialize,
  deserialize: _responseFormatDeserialize,
  deserializeProp: _responseFormatDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _responseFormatGetId,
  getLinks: _responseFormatGetLinks,
  attach: _responseFormatAttach,
  version: '3.1.0+1',
);

int _responseFormatEstimateSize(
  ResponseFormat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.licensedBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.method;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.requestUri;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.version;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _responseFormatSerialize(
  ResponseFormat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isTransactionDone);
  writer.writeString(offsets[1], object.licensedBy);
  writer.writeString(offsets[2], object.method);
  writer.writeString(offsets[3], object.requestUri);
  writer.writeLong(offsets[4], object.statusCode);
  writer.writeString(offsets[5], object.version);
}

ResponseFormat _responseFormatDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ResponseFormat(
    isTransactionDone: reader.readBoolOrNull(offsets[0]),
    licensedBy: reader.readStringOrNull(offsets[1]),
    method: reader.readStringOrNull(offsets[2]),
    requestUri: reader.readStringOrNull(offsets[3]),
    statusCode: reader.readLongOrNull(offsets[4]),
    version: reader.readStringOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _responseFormatDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _responseFormatGetId(ResponseFormat object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _responseFormatGetLinks(ResponseFormat object) {
  return [];
}

void _responseFormatAttach(
    IsarCollection<dynamic> col, Id id, ResponseFormat object) {
  object.id = id;
}

extension ResponseFormatQueryWhereSort
    on QueryBuilder<ResponseFormat, ResponseFormat, QWhere> {
  QueryBuilder<ResponseFormat, ResponseFormat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ResponseFormatQueryWhere
    on QueryBuilder<ResponseFormat, ResponseFormat, QWhereClause> {
  QueryBuilder<ResponseFormat, ResponseFormat, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResponseFormatQueryFilter
    on QueryBuilder<ResponseFormat, ResponseFormat, QFilterCondition> {
  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      isTransactionDoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTransactionDone',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      isTransactionDoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTransactionDone',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      isTransactionDoneEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTransactionDone',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'licensedBy',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'licensedBy',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'licensedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'licensedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'licensedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'licensedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'licensedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'licensedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'licensedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'licensedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'licensedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      licensedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'licensedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'method',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'method',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'method',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'method',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      methodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'requestUri',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'requestUri',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'requestUri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'requestUri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'requestUri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'requestUri',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'requestUri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'requestUri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'requestUri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'requestUri',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'requestUri',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      requestUriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'requestUri',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      statusCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'statusCode',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      statusCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'statusCode',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      statusCodeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      statusCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      statusCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      statusCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'statusCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'version',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'version',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'version',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterFilterCondition>
      versionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'version',
        value: '',
      ));
    });
  }
}

extension ResponseFormatQueryObject
    on QueryBuilder<ResponseFormat, ResponseFormat, QFilterCondition> {}

extension ResponseFormatQueryLinks
    on QueryBuilder<ResponseFormat, ResponseFormat, QFilterCondition> {}

extension ResponseFormatQuerySortBy
    on QueryBuilder<ResponseFormat, ResponseFormat, QSortBy> {
  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByIsTransactionDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTransactionDone', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByIsTransactionDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTransactionDone', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByLicensedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'licensedBy', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByLicensedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'licensedBy', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy> sortByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByRequestUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requestUri', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByRequestUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requestUri', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension ResponseFormatQuerySortThenBy
    on QueryBuilder<ResponseFormat, ResponseFormat, QSortThenBy> {
  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByIsTransactionDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTransactionDone', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByIsTransactionDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTransactionDone', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByLicensedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'licensedBy', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByLicensedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'licensedBy', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy> thenByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByRequestUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requestUri', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByRequestUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requestUri', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.desc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension ResponseFormatQueryWhereDistinct
    on QueryBuilder<ResponseFormat, ResponseFormat, QDistinct> {
  QueryBuilder<ResponseFormat, ResponseFormat, QDistinct>
      distinctByIsTransactionDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTransactionDone');
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QDistinct> distinctByLicensedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'licensedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QDistinct> distinctByMethod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'method', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QDistinct> distinctByRequestUri(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'requestUri', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QDistinct>
      distinctByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusCode');
    });
  }

  QueryBuilder<ResponseFormat, ResponseFormat, QDistinct> distinctByVersion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version', caseSensitive: caseSensitive);
    });
  }
}

extension ResponseFormatQueryProperty
    on QueryBuilder<ResponseFormat, ResponseFormat, QQueryProperty> {
  QueryBuilder<ResponseFormat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ResponseFormat, bool?, QQueryOperations>
      isTransactionDoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTransactionDone');
    });
  }

  QueryBuilder<ResponseFormat, String?, QQueryOperations> licensedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'licensedBy');
    });
  }

  QueryBuilder<ResponseFormat, String?, QQueryOperations> methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'method');
    });
  }

  QueryBuilder<ResponseFormat, String?, QQueryOperations> requestUriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'requestUri');
    });
  }

  QueryBuilder<ResponseFormat, int?, QQueryOperations> statusCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusCode');
    });
  }

  QueryBuilder<ResponseFormat, String?, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
