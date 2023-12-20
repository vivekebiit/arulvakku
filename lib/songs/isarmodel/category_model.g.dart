// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetResultCategoryCollection on Isar {
  IsarCollection<ResultCategory> get resultCategorys => this.collection();
}

const ResultCategorySchema = CollectionSchema(
  name: r'ResultCategory',
  id: 5044991550558256790,
  properties: {
    r'sCategory': PropertySchema(
      id: 0,
      name: r'sCategory',
      type: IsarType.string,
    ),
    r'sColorCode': PropertySchema(
      id: 1,
      name: r'sColorCode',
      type: IsarType.string,
    ),
    r'sCount': PropertySchema(
      id: 2,
      name: r'sCount',
      type: IsarType.long,
    )
  },
  estimateSize: _resultCategoryEstimateSize,
  serialize: _resultCategorySerialize,
  deserialize: _resultCategoryDeserialize,
  deserializeProp: _resultCategoryDeserializeProp,
  idName: r'sCategoryId',
  indexes: {},
  links: {
    r'songTitles': LinkSchema(
      id: 3019842044180130878,
      name: r'songTitles',
      target: r'ResultSongTitle',
      single: false,
      linkName: r'titles',
    )
  },
  embeddedSchemas: {},
  getId: _resultCategoryGetId,
  getLinks: _resultCategoryGetLinks,
  attach: _resultCategoryAttach,
  version: '3.1.0+1',
);

int _resultCategoryEstimateSize(
  ResultCategory object,
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
    final value = object.sColorCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _resultCategorySerialize(
  ResultCategory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.sCategory);
  writer.writeString(offsets[1], object.sColorCode);
  writer.writeLong(offsets[2], object.sCount);
}

ResultCategory _resultCategoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ResultCategory(
    sCategory: reader.readStringOrNull(offsets[0]),
    sCategoryId: id,
    sColorCode: reader.readStringOrNull(offsets[1]),
    sCount: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _resultCategoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _resultCategoryGetId(ResultCategory object) {
  return object.sCategoryId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _resultCategoryGetLinks(ResultCategory object) {
  return [object.songTitles];
}

void _resultCategoryAttach(
    IsarCollection<dynamic> col, Id id, ResultCategory object) {
  object.sCategoryId = id;
  object.songTitles
      .attach(col, col.isar.collection<ResultSongTitle>(), r'songTitles', id);
}

extension ResultCategoryQueryWhereSort
    on QueryBuilder<ResultCategory, ResultCategory, QWhere> {
  QueryBuilder<ResultCategory, ResultCategory, QAfterWhere> anySCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ResultCategoryQueryWhere
    on QueryBuilder<ResultCategory, ResultCategory, QWhereClause> {
  QueryBuilder<ResultCategory, ResultCategory, QAfterWhereClause>
      sCategoryIdEqualTo(Id sCategoryId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: sCategoryId,
        upper: sCategoryId,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterWhereClause>
      sCategoryIdNotEqualTo(Id sCategoryId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: sCategoryId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: sCategoryId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: sCategoryId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: sCategoryId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterWhereClause>
      sCategoryIdGreaterThan(Id sCategoryId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: sCategoryId, includeLower: include),
      );
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterWhereClause>
      sCategoryIdLessThan(Id sCategoryId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: sCategoryId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterWhereClause>
      sCategoryIdBetween(
    Id lowerSCategoryId,
    Id upperSCategoryId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerSCategoryId,
        includeLower: includeLower,
        upper: upperSCategoryId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResultCategoryQueryFilter
    on QueryBuilder<ResultCategory, ResultCategory, QFilterCondition> {
  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sCategory',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sCategory',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sCategoryId',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sCategoryId',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sCategoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIdGreaterThan(
    Id? value, {
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIdLessThan(
    Id? value, {
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCategoryIdBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sColorCode',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sColorCode',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sColorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sColorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sColorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sColorCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sColorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sColorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sColorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sColorCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sColorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sColorCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sColorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sCount',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sCount',
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      sCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResultCategoryQueryObject
    on QueryBuilder<ResultCategory, ResultCategory, QFilterCondition> {}

extension ResultCategoryQueryLinks
    on QueryBuilder<ResultCategory, ResultCategory, QFilterCondition> {
  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      songTitles(FilterQuery<ResultSongTitle> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'songTitles');
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      songTitlesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'songTitles', length, true, length, true);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      songTitlesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'songTitles', 0, true, 0, true);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      songTitlesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'songTitles', 0, false, 999999, true);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      songTitlesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'songTitles', 0, true, length, include);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      songTitlesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'songTitles', length, include, 999999, true);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterFilterCondition>
      songTitlesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'songTitles', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ResultCategoryQuerySortBy
    on QueryBuilder<ResultCategory, ResultCategory, QSortBy> {
  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy> sortBySCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategory', Sort.asc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      sortBySCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategory', Sort.desc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      sortBySColorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sColorCode', Sort.asc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      sortBySColorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sColorCode', Sort.desc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy> sortBySCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCount', Sort.asc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      sortBySCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCount', Sort.desc);
    });
  }
}

extension ResultCategoryQuerySortThenBy
    on QueryBuilder<ResultCategory, ResultCategory, QSortThenBy> {
  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy> thenBySCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategory', Sort.asc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      thenBySCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategory', Sort.desc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      thenBySCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategoryId', Sort.asc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      thenBySCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCategoryId', Sort.desc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      thenBySColorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sColorCode', Sort.asc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      thenBySColorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sColorCode', Sort.desc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy> thenBySCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCount', Sort.asc);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QAfterSortBy>
      thenBySCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sCount', Sort.desc);
    });
  }
}

extension ResultCategoryQueryWhereDistinct
    on QueryBuilder<ResultCategory, ResultCategory, QDistinct> {
  QueryBuilder<ResultCategory, ResultCategory, QDistinct> distinctBySCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sCategory', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QDistinct> distinctBySColorCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sColorCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultCategory, ResultCategory, QDistinct> distinctBySCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sCount');
    });
  }
}

extension ResultCategoryQueryProperty
    on QueryBuilder<ResultCategory, ResultCategory, QQueryProperty> {
  QueryBuilder<ResultCategory, int, QQueryOperations> sCategoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sCategoryId');
    });
  }

  QueryBuilder<ResultCategory, String?, QQueryOperations> sCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sCategory');
    });
  }

  QueryBuilder<ResultCategory, String?, QQueryOperations> sColorCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sColorCode');
    });
  }

  QueryBuilder<ResultCategory, int?, QQueryOperations> sCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sCount');
    });
  }
}
