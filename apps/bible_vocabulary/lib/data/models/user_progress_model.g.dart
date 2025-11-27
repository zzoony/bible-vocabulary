// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_progress_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserProgressModelCollection on Isar {
  IsarCollection<UserProgressModel> get userProgressModels => this.collection();
}

const UserProgressModelSchema = CollectionSchema(
  name: r'UserProgressModel',
  id: -6713347325796355873,
  properties: {
    r'isSaved': PropertySchema(
      id: 0,
      name: r'isSaved',
      type: IsarType.bool,
    ),
    r'lastViewedAt': PropertySchema(
      id: 1,
      name: r'lastViewedAt',
      type: IsarType.dateTime,
    ),
    r'masteredAt': PropertySchema(
      id: 2,
      name: r'masteredAt',
      type: IsarType.dateTime,
    ),
    r'status': PropertySchema(
      id: 3,
      name: r'status',
      type: IsarType.byte,
      enumMap: _UserProgressModelstatusEnumValueMap,
    ),
    r'viewCount': PropertySchema(
      id: 4,
      name: r'viewCount',
      type: IsarType.long,
    ),
    r'word': PropertySchema(
      id: 5,
      name: r'word',
      type: IsarType.string,
    )
  },
  estimateSize: _userProgressModelEstimateSize,
  serialize: _userProgressModelSerialize,
  deserialize: _userProgressModelDeserialize,
  deserializeProp: _userProgressModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'word': IndexSchema(
      id: -2031626334120420267,
      name: r'word',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'word',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'lastViewedAt': IndexSchema(
      id: -4764843800160647912,
      name: r'lastViewedAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'lastViewedAt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _userProgressModelGetId,
  getLinks: _userProgressModelGetLinks,
  attach: _userProgressModelAttach,
  version: '3.1.0+1',
);

int _userProgressModelEstimateSize(
  UserProgressModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.word.length * 3;
  return bytesCount;
}

void _userProgressModelSerialize(
  UserProgressModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isSaved);
  writer.writeDateTime(offsets[1], object.lastViewedAt);
  writer.writeDateTime(offsets[2], object.masteredAt);
  writer.writeByte(offsets[3], object.status.index);
  writer.writeLong(offsets[4], object.viewCount);
  writer.writeString(offsets[5], object.word);
}

UserProgressModel _userProgressModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserProgressModel();
  object.id = id;
  object.isSaved = reader.readBool(offsets[0]);
  object.lastViewedAt = reader.readDateTime(offsets[1]);
  object.masteredAt = reader.readDateTimeOrNull(offsets[2]);
  object.status =
      _UserProgressModelstatusValueEnumMap[reader.readByteOrNull(offsets[3])] ??
          WordStatus.unknown;
  object.viewCount = reader.readLong(offsets[4]);
  object.word = reader.readString(offsets[5]);
  return object;
}

P _userProgressModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (_UserProgressModelstatusValueEnumMap[
              reader.readByteOrNull(offset)] ??
          WordStatus.unknown) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _UserProgressModelstatusEnumValueMap = {
  'unknown': 0,
  'learning': 1,
  'known': 2,
};
const _UserProgressModelstatusValueEnumMap = {
  0: WordStatus.unknown,
  1: WordStatus.learning,
  2: WordStatus.known,
};

Id _userProgressModelGetId(UserProgressModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userProgressModelGetLinks(
    UserProgressModel object) {
  return [];
}

void _userProgressModelAttach(
    IsarCollection<dynamic> col, Id id, UserProgressModel object) {
  object.id = id;
}

extension UserProgressModelByIndex on IsarCollection<UserProgressModel> {
  Future<UserProgressModel?> getByWord(String word) {
    return getByIndex(r'word', [word]);
  }

  UserProgressModel? getByWordSync(String word) {
    return getByIndexSync(r'word', [word]);
  }

  Future<bool> deleteByWord(String word) {
    return deleteByIndex(r'word', [word]);
  }

  bool deleteByWordSync(String word) {
    return deleteByIndexSync(r'word', [word]);
  }

  Future<List<UserProgressModel?>> getAllByWord(List<String> wordValues) {
    final values = wordValues.map((e) => [e]).toList();
    return getAllByIndex(r'word', values);
  }

  List<UserProgressModel?> getAllByWordSync(List<String> wordValues) {
    final values = wordValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'word', values);
  }

  Future<int> deleteAllByWord(List<String> wordValues) {
    final values = wordValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'word', values);
  }

  int deleteAllByWordSync(List<String> wordValues) {
    final values = wordValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'word', values);
  }

  Future<Id> putByWord(UserProgressModel object) {
    return putByIndex(r'word', object);
  }

  Id putByWordSync(UserProgressModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'word', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByWord(List<UserProgressModel> objects) {
    return putAllByIndex(r'word', objects);
  }

  List<Id> putAllByWordSync(List<UserProgressModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'word', objects, saveLinks: saveLinks);
  }
}

extension UserProgressModelQueryWhereSort
    on QueryBuilder<UserProgressModel, UserProgressModel, QWhere> {
  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhere>
      anyLastViewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'lastViewedAt'),
      );
    });
  }
}

extension UserProgressModelQueryWhere
    on QueryBuilder<UserProgressModel, UserProgressModel, QWhereClause> {
  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      idBetween(
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

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      wordEqualTo(String word) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'word',
        value: [word],
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      wordNotEqualTo(String word) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'word',
              lower: [],
              upper: [word],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'word',
              lower: [word],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'word',
              lower: [word],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'word',
              lower: [],
              upper: [word],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      lastViewedAtEqualTo(DateTime lastViewedAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'lastViewedAt',
        value: [lastViewedAt],
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      lastViewedAtNotEqualTo(DateTime lastViewedAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastViewedAt',
              lower: [],
              upper: [lastViewedAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastViewedAt',
              lower: [lastViewedAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastViewedAt',
              lower: [lastViewedAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'lastViewedAt',
              lower: [],
              upper: [lastViewedAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      lastViewedAtGreaterThan(
    DateTime lastViewedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastViewedAt',
        lower: [lastViewedAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      lastViewedAtLessThan(
    DateTime lastViewedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastViewedAt',
        lower: [],
        upper: [lastViewedAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterWhereClause>
      lastViewedAtBetween(
    DateTime lowerLastViewedAt,
    DateTime upperLastViewedAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'lastViewedAt',
        lower: [lowerLastViewedAt],
        includeLower: includeLower,
        upper: [upperLastViewedAt],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UserProgressModelQueryFilter
    on QueryBuilder<UserProgressModel, UserProgressModel, QFilterCondition> {
  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
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

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
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

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      isSavedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSaved',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      lastViewedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastViewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      lastViewedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastViewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      lastViewedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastViewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      lastViewedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastViewedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      masteredAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'masteredAt',
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      masteredAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'masteredAt',
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      masteredAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'masteredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      masteredAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'masteredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      masteredAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'masteredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      masteredAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'masteredAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      statusEqualTo(WordStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      statusGreaterThan(
    WordStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      statusLessThan(
    WordStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      statusBetween(
    WordStatus lower,
    WordStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      viewCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      viewCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'viewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      viewCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'viewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      viewCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'viewCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'word',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'word',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterFilterCondition>
      wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'word',
        value: '',
      ));
    });
  }
}

extension UserProgressModelQueryObject
    on QueryBuilder<UserProgressModel, UserProgressModel, QFilterCondition> {}

extension UserProgressModelQueryLinks
    on QueryBuilder<UserProgressModel, UserProgressModel, QFilterCondition> {}

extension UserProgressModelQuerySortBy
    on QueryBuilder<UserProgressModel, UserProgressModel, QSortBy> {
  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByIsSaved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSaved', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByIsSavedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSaved', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByLastViewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastViewedAt', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByLastViewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastViewedAt', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByMasteredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteredAt', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByMasteredAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteredAt', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByViewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewCount', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByViewCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewCount', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      sortByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension UserProgressModelQuerySortThenBy
    on QueryBuilder<UserProgressModel, UserProgressModel, QSortThenBy> {
  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByIsSaved() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSaved', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByIsSavedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSaved', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByLastViewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastViewedAt', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByLastViewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastViewedAt', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByMasteredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteredAt', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByMasteredAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteredAt', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByViewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewCount', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByViewCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewCount', Sort.desc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QAfterSortBy>
      thenByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension UserProgressModelQueryWhereDistinct
    on QueryBuilder<UserProgressModel, UserProgressModel, QDistinct> {
  QueryBuilder<UserProgressModel, UserProgressModel, QDistinct>
      distinctByIsSaved() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSaved');
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QDistinct>
      distinctByLastViewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastViewedAt');
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QDistinct>
      distinctByMasteredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'masteredAt');
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QDistinct>
      distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QDistinct>
      distinctByViewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'viewCount');
    });
  }

  QueryBuilder<UserProgressModel, UserProgressModel, QDistinct> distinctByWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'word', caseSensitive: caseSensitive);
    });
  }
}

extension UserProgressModelQueryProperty
    on QueryBuilder<UserProgressModel, UserProgressModel, QQueryProperty> {
  QueryBuilder<UserProgressModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserProgressModel, bool, QQueryOperations> isSavedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSaved');
    });
  }

  QueryBuilder<UserProgressModel, DateTime, QQueryOperations>
      lastViewedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastViewedAt');
    });
  }

  QueryBuilder<UserProgressModel, DateTime?, QQueryOperations>
      masteredAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'masteredAt');
    });
  }

  QueryBuilder<UserProgressModel, WordStatus, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<UserProgressModel, int, QQueryOperations> viewCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'viewCount');
    });
  }

  QueryBuilder<UserProgressModel, String, QQueryOperations> wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }
}
