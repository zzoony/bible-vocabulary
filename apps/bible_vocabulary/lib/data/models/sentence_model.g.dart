// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSentenceModelCollection on Isar {
  IsarCollection<SentenceModel> get sentenceModels => this.collection();
}

const SentenceModelSchema = CollectionSchema(
  name: r'SentenceModel',
  id: 548350441941175807,
  properties: {
    r'book': PropertySchema(
      id: 0,
      name: r'book',
      type: IsarType.string,
    ),
    r'korean': PropertySchema(
      id: 1,
      name: r'korean',
      type: IsarType.string,
    ),
    r'ref': PropertySchema(
      id: 2,
      name: r'ref',
      type: IsarType.string,
    ),
    r'sentenceId': PropertySchema(
      id: 3,
      name: r'sentenceId',
      type: IsarType.string,
    ),
    r'text': PropertySchema(
      id: 4,
      name: r'text',
      type: IsarType.string,
    )
  },
  estimateSize: _sentenceModelEstimateSize,
  serialize: _sentenceModelSerialize,
  deserialize: _sentenceModelDeserialize,
  deserializeProp: _sentenceModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'sentenceId': IndexSchema(
      id: -8491109664858005669,
      name: r'sentenceId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'sentenceId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'book': IndexSchema(
      id: 7590118508809311381,
      name: r'book',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'book',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _sentenceModelGetId,
  getLinks: _sentenceModelGetLinks,
  attach: _sentenceModelAttach,
  version: '3.1.0+1',
);

int _sentenceModelEstimateSize(
  SentenceModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.book.length * 3;
  bytesCount += 3 + object.korean.length * 3;
  bytesCount += 3 + object.ref.length * 3;
  bytesCount += 3 + object.sentenceId.length * 3;
  bytesCount += 3 + object.text.length * 3;
  return bytesCount;
}

void _sentenceModelSerialize(
  SentenceModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.book);
  writer.writeString(offsets[1], object.korean);
  writer.writeString(offsets[2], object.ref);
  writer.writeString(offsets[3], object.sentenceId);
  writer.writeString(offsets[4], object.text);
}

SentenceModel _sentenceModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SentenceModel();
  object.book = reader.readString(offsets[0]);
  object.id = id;
  object.korean = reader.readString(offsets[1]);
  object.ref = reader.readString(offsets[2]);
  object.sentenceId = reader.readString(offsets[3]);
  object.text = reader.readString(offsets[4]);
  return object;
}

P _sentenceModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sentenceModelGetId(SentenceModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sentenceModelGetLinks(SentenceModel object) {
  return [];
}

void _sentenceModelAttach(
    IsarCollection<dynamic> col, Id id, SentenceModel object) {
  object.id = id;
}

extension SentenceModelByIndex on IsarCollection<SentenceModel> {
  Future<SentenceModel?> getBySentenceId(String sentenceId) {
    return getByIndex(r'sentenceId', [sentenceId]);
  }

  SentenceModel? getBySentenceIdSync(String sentenceId) {
    return getByIndexSync(r'sentenceId', [sentenceId]);
  }

  Future<bool> deleteBySentenceId(String sentenceId) {
    return deleteByIndex(r'sentenceId', [sentenceId]);
  }

  bool deleteBySentenceIdSync(String sentenceId) {
    return deleteByIndexSync(r'sentenceId', [sentenceId]);
  }

  Future<List<SentenceModel?>> getAllBySentenceId(
      List<String> sentenceIdValues) {
    final values = sentenceIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'sentenceId', values);
  }

  List<SentenceModel?> getAllBySentenceIdSync(List<String> sentenceIdValues) {
    final values = sentenceIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'sentenceId', values);
  }

  Future<int> deleteAllBySentenceId(List<String> sentenceIdValues) {
    final values = sentenceIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'sentenceId', values);
  }

  int deleteAllBySentenceIdSync(List<String> sentenceIdValues) {
    final values = sentenceIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'sentenceId', values);
  }

  Future<Id> putBySentenceId(SentenceModel object) {
    return putByIndex(r'sentenceId', object);
  }

  Id putBySentenceIdSync(SentenceModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'sentenceId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySentenceId(List<SentenceModel> objects) {
    return putAllByIndex(r'sentenceId', objects);
  }

  List<Id> putAllBySentenceIdSync(List<SentenceModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'sentenceId', objects, saveLinks: saveLinks);
  }
}

extension SentenceModelQueryWhereSort
    on QueryBuilder<SentenceModel, SentenceModel, QWhere> {
  QueryBuilder<SentenceModel, SentenceModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SentenceModelQueryWhere
    on QueryBuilder<SentenceModel, SentenceModel, QWhereClause> {
  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause>
      sentenceIdEqualTo(String sentenceId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'sentenceId',
        value: [sentenceId],
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause>
      sentenceIdNotEqualTo(String sentenceId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sentenceId',
              lower: [],
              upper: [sentenceId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sentenceId',
              lower: [sentenceId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sentenceId',
              lower: [sentenceId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sentenceId',
              lower: [],
              upper: [sentenceId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause> bookEqualTo(
      String book) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'book',
        value: [book],
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterWhereClause> bookNotEqualTo(
      String book) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'book',
              lower: [],
              upper: [book],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'book',
              lower: [book],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'book',
              lower: [book],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'book',
              lower: [],
              upper: [book],
              includeUpper: false,
            ));
      }
    });
  }
}

extension SentenceModelQueryFilter
    on QueryBuilder<SentenceModel, SentenceModel, QFilterCondition> {
  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> bookEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'book',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      bookGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'book',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      bookLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'book',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> bookBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'book',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      bookStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'book',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      bookEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'book',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      bookContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'book',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> bookMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'book',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      bookIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'book',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      bookIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'book',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
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

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'korean',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'korean',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'korean',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'korean',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'korean',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'korean',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'korean',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'korean',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'korean',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      koreanIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'korean',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> refEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      refGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> refLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> refBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ref',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      refStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> refEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> refContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ref',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> refMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ref',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      refIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ref',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      refIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ref',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentenceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sentenceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sentenceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sentenceId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sentenceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sentenceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sentenceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sentenceId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentenceId',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      sentenceIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sentenceId',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      textGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      textLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> textBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition> textMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterFilterCondition>
      textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }
}

extension SentenceModelQueryObject
    on QueryBuilder<SentenceModel, SentenceModel, QFilterCondition> {}

extension SentenceModelQueryLinks
    on QueryBuilder<SentenceModel, SentenceModel, QFilterCondition> {}

extension SentenceModelQuerySortBy
    on QueryBuilder<SentenceModel, SentenceModel, QSortBy> {
  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortByBook() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'book', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortByBookDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'book', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortByKorean() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'korean', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortByKoreanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'korean', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortByRef() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ref', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortByRefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ref', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortBySentenceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentenceId', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy>
      sortBySentenceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentenceId', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> sortByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension SentenceModelQuerySortThenBy
    on QueryBuilder<SentenceModel, SentenceModel, QSortThenBy> {
  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByBook() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'book', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByBookDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'book', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByKorean() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'korean', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByKoreanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'korean', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByRef() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ref', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByRefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ref', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenBySentenceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentenceId', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy>
      thenBySentenceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentenceId', Sort.desc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QAfterSortBy> thenByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension SentenceModelQueryWhereDistinct
    on QueryBuilder<SentenceModel, SentenceModel, QDistinct> {
  QueryBuilder<SentenceModel, SentenceModel, QDistinct> distinctByBook(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'book', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QDistinct> distinctByKorean(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'korean', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QDistinct> distinctByRef(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ref', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QDistinct> distinctBySentenceId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sentenceId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SentenceModel, SentenceModel, QDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'text', caseSensitive: caseSensitive);
    });
  }
}

extension SentenceModelQueryProperty
    on QueryBuilder<SentenceModel, SentenceModel, QQueryProperty> {
  QueryBuilder<SentenceModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SentenceModel, String, QQueryOperations> bookProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'book');
    });
  }

  QueryBuilder<SentenceModel, String, QQueryOperations> koreanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'korean');
    });
  }

  QueryBuilder<SentenceModel, String, QQueryOperations> refProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ref');
    });
  }

  QueryBuilder<SentenceModel, String, QQueryOperations> sentenceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sentenceId');
    });
  }

  QueryBuilder<SentenceModel, String, QQueryOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'text');
    });
  }
}
