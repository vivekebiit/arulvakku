// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_title_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetResultSongTitleCollection on Isar {
  IsarCollection<ResultSongTitle> get resultSongTitles => this.collection();
}

const ResultSongTitleSchema = CollectionSchema(
  name: r'ResultSongTitle',
  id: -35333679502061189,
  properties: {
    r'sCategory': PropertySchema(
      id: 0,
      name: r'sCategory',
      type: IsarType.string,
    ),
    r'sCategoryId': PropertySchema(
      id: 1,
      name: r'sCategoryId',
      type: IsarType.long,
    ),
    r'sNo': PropertySchema(
      id: 2,
      name: r'sNo',
      type: IsarType.long,
    ),
    r'sSong': PropertySchema(
      id: 3,
      name: r'sSong',
      type: IsarType.string,
    ),
    r'sTitle': PropertySchema(
      id: 4,
      name: r'sTitle',
      type: IsarType.string,
    )
  },
  estimateSize: _resultSongTitleEstimateSize,
  serialize: _resultSongTitleSerialize,
  deserialize: _resultSongTitleDeserialize,
  deserializeProp: _resultSongTitleDeserializeProp,
  idName: r'sSongId',
  indexes: {},
  links: {
    r'titles': LinkSchema(
      id: -2282191662497889776,
      name: r'titles',
      target: r'ResultCategory',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _resultSongTitleGetId,
  getLinks: _resultSongTitleGetLinks,
  attach: _resultSongTitleAttach,
  version: '3.1.0+1',
);

int _resultSongTitleEstimateSize(
  ResultSongTitle object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.sCategory;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sSong;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _resultSongTitleSerialize(
  ResultSongTitle object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.sCategory);
  writer.writeLong(offsets[1], object.sCategoryId);
  writer.writeLong(offsets[2], object.sNo);
  writer.writeString(offsets[3], object.sSong);
  writer.writeString(offsets[4], object.sTitle);
}

ResultSongTitle _resultSongTitleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ResultSongTitle(
    sCategory: reader.readStringOrNull(offsets[0]),
    sCategoryId: reader.readLongOrNull(offsets[1]),
    sNo: reader.readLongOrNull(offsets[2]),
    sSong: reader.readStringOrNull(offsets[3]),
    sSongId: id,
    sTitle: reader.readStringOrNull(offsets[4]),
  );
  return object;
}

P _resultSongTitleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _resultSongTitleGetId(ResultSongTitle object) {
  return object.sSongId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _resultSongTitleGetLinks(ResultSongTitle object) {
  return [object.titles];
}

void _resultSongTitleAttach(
    IsarCollection<dynamic> col, Id id, ResultSongTitle object) {
  object.sSongId = id;
  object.titles
      .attach(col, col.isar.collection<ResultCategory>(), r'titles', id);
}

extension ResultSongTitleQueryWhereSort
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QWhere> {
  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterWhere> anySSongId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ResultSongTitleQueryWhere
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QWhereClause> {
  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterWhereClause>
      sSongIdEqualTo(Id sSongId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: sSongId,
        upper: sSongId,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterWhereClause>
      sSongIdNotEqualTo(Id sSongId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: sSongId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: sSongId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: sSongId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: sSongId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterWhereClause>
      sSongIdGreaterThan(Id sSongId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: sSongId, includeLower: include),
      );
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterWhereClause>
      sSongIdLessThan(Id sSongId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: sSongId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterWhereClause>
      sSongIdBetween(
    Id lowerSSongId,
    Id upperSSongId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerSSongId,
        includeLower: includeLower,
        upper: upperSSongId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResultSongTitleQueryFilter
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QFilterCondition> {
  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sCategory',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sCategory',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sCategory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sCategoryId',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sCategoryId',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sCategoryIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sCategoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sNo',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sNo',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sNoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sNo',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sNoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sNo',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sNoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sNo',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sNoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sSong',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sSong',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sSong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sSong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sSong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sSong',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sSong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sSong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sSong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sSong',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sSong',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sSong',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sSongId',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sSongId',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sSongId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sSongId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sSongId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sSongIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sSongId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sTitle',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sTitle',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      sTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sTitle',
        value: '',
      ));
    });
  }
}

extension ResultSongTitleQueryObject
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QFilterCondition> {}

extension ResultSongTitleQueryLinks
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QFilterCondition> {
  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition> titles(
      FilterQuery<ResultCategory> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'titles');
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      titlesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'titles', length, true, length, true);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      titlesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'titles', 0, true, 0, true);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      titlesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'titles', 0, false, 999999, true);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      titlesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'titles', 0, true, length, include);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      titlesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'titles', length, include, 999999, true);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterFilterCondition>
      titlesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'titles', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ResultSongTitleQuerySortBy
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QSortBy> {
  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      sortBySCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategory', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      sortBySCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategory', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      sortBySCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategoryId', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      sortBySCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategoryId', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> sortBySNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sNo', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> sortBySNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sNo', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> sortBySSong() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sSong', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      sortBySSongDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sSong', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> sortBySTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sTitle', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      sortBySTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sTitle', Sort.desc);
    });
  }
}

extension ResultSongTitleQuerySortThenBy
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QSortThenBy> {
  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      thenBySCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategory', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      thenBySCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategory', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      thenBySCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategoryId', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      thenBySCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategoryId', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> thenBySNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sNo', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> thenBySNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sNo', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> thenBySSong() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sSong', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      thenBySSongDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sSong', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> thenBySSongId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sSongId', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      thenBySSongIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sSongId', Sort.desc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy> thenBySTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sTitle', Sort.asc);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QAfterSortBy>
      thenBySTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sTitle', Sort.desc);
    });
  }
}

extension ResultSongTitleQueryWhereDistinct
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QDistinct> {
  QueryBuilder<ResultSongTitle, ResultSongTitle, QDistinct> distinctBySCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sCategory', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QDistinct>
      distinctBySCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sCategoryId');
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QDistinct> distinctBySNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sNo');
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QDistinct> distinctBySSong(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sSong', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultSongTitle, ResultSongTitle, QDistinct> distinctBySTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sTitle', caseSensitive: caseSensitive);
    });
  }
}

extension ResultSongTitleQueryProperty
    on QueryBuilder<ResultSongTitle, ResultSongTitle, QQueryProperty> {
  QueryBuilder<ResultSongTitle, int, QQueryOperations> sSongIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sSongId');
    });
  }

  QueryBuilder<ResultSongTitle, String?, QQueryOperations> sCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sCategory');
    });
  }

  QueryBuilder<ResultSongTitle, int?, QQueryOperations> sCategoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sCategoryId');
    });
  }

  QueryBuilder<ResultSongTitle, int?, QQueryOperations> sNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sNo');
    });
  }

  QueryBuilder<ResultSongTitle, String?, QQueryOperations> sSongProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sSong');
    });
  }

  QueryBuilder<ResultSongTitle, String?, QQueryOperations> sTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sTitle');
    });
  }
}
