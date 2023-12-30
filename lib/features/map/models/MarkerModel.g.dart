// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MarkerModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMarkerModelCollection on Isar {
  IsarCollection<MarkerModel> get markerModels => this.collection();
}

const MarkerModelSchema = CollectionSchema(
  name: r'MarkerModel',
  id: -7411442452692229809,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'from': PropertySchema(
      id: 1,
      name: r'from',
      type: IsarType.dateTime,
    ),
    r'lfdnr': PropertySchema(
      id: 2,
      name: r'lfdnr',
      type: IsarType.string,
    ),
    r'location': PropertySchema(
      id: 3,
      name: r'location',
      type: IsarType.string,
    ),
    r'locationGPS': PropertySchema(
      id: 4,
      name: r'locationGPS',
      type: IsarType.object,
      target: r'LatLng',
    ),
    r'plz': PropertySchema(
      id: 5,
      name: r'plz',
      type: IsarType.string,
    ),
    r'route': PropertySchema(
      id: 6,
      name: r'route',
      type: IsarType.stringList,
    ),
    r'routeGPS': PropertySchema(
      id: 7,
      name: r'routeGPS',
      type: IsarType.objectList,
      target: r'LatLng',
    ),
    r'to': PropertySchema(
      id: 8,
      name: r'to',
      type: IsarType.dateTime,
    ),
    r'topic': PropertySchema(
      id: 9,
      name: r'topic',
      type: IsarType.string,
    )
  },
  estimateSize: _markerModelEstimateSize,
  serialize: _markerModelSerialize,
  deserialize: _markerModelDeserialize,
  deserializeProp: _markerModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'LatLng': LatLngSchema},
  getId: _markerModelGetId,
  getLinks: _markerModelGetLinks,
  attach: _markerModelAttach,
  version: '3.1.0+1',
);

int _markerModelEstimateSize(
  MarkerModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.lfdnr.length * 3;
  bytesCount += 3 + object.location.length * 3;
  {
    final value = object.locationGPS;
    if (value != null) {
      bytesCount +=
          3 + LatLngSchema.estimateSize(value, allOffsets[LatLng]!, allOffsets);
    }
  }
  bytesCount += 3 + object.plz.length * 3;
  bytesCount += 3 + object.route.length * 3;
  {
    for (var i = 0; i < object.route.length; i++) {
      final value = object.route[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.routeGPS.length * 3;
  {
    final offsets = allOffsets[LatLng]!;
    for (var i = 0; i < object.routeGPS.length; i++) {
      final value = object.routeGPS[i];
      bytesCount += LatLngSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.topic.length * 3;
  return bytesCount;
}

void _markerModelSerialize(
  MarkerModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeDateTime(offsets[1], object.from);
  writer.writeString(offsets[2], object.lfdnr);
  writer.writeString(offsets[3], object.location);
  writer.writeObject<LatLng>(
    offsets[4],
    allOffsets,
    LatLngSchema.serialize,
    object.locationGPS,
  );
  writer.writeString(offsets[5], object.plz);
  writer.writeStringList(offsets[6], object.route);
  writer.writeObjectList<LatLng>(
    offsets[7],
    allOffsets,
    LatLngSchema.serialize,
    object.routeGPS,
  );
  writer.writeDateTime(offsets[8], object.to);
  writer.writeString(offsets[9], object.topic);
}

MarkerModel _markerModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MarkerModel(
    reader.readDateTime(offsets[0]),
    reader.readDateTime(offsets[1]),
    reader.readDateTime(offsets[8]),
    reader.readString(offsets[3]),
    reader.readString(offsets[9]),
    reader.readStringList(offsets[6]) ?? [],
    reader.readString(offsets[2]),
    reader.readObjectOrNull<LatLng>(
      offsets[4],
      LatLngSchema.deserialize,
      allOffsets,
    ),
    reader.readObjectList<LatLng>(
          offsets[7],
          LatLngSchema.deserialize,
          allOffsets,
          LatLng(),
        ) ??
        [],
    reader.readString(offsets[5]),
  );
  object.id = id;
  return object;
}

P _markerModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<LatLng>(
        offset,
        LatLngSchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    case 7:
      return (reader.readObjectList<LatLng>(
            offset,
            LatLngSchema.deserialize,
            allOffsets,
            LatLng(),
          ) ??
          []) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _markerModelGetId(MarkerModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _markerModelGetLinks(MarkerModel object) {
  return [];
}

void _markerModelAttach(
    IsarCollection<dynamic> col, Id id, MarkerModel object) {
  object.id = id;
}

extension MarkerModelQueryWhereSort
    on QueryBuilder<MarkerModel, MarkerModel, QWhere> {
  QueryBuilder<MarkerModel, MarkerModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MarkerModelQueryWhere
    on QueryBuilder<MarkerModel, MarkerModel, QWhereClause> {
  QueryBuilder<MarkerModel, MarkerModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<MarkerModel, MarkerModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterWhereClause> idBetween(
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

extension MarkerModelQueryFilter
    on QueryBuilder<MarkerModel, MarkerModel, QFilterCondition> {
  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> fromEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> fromGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'from',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> fromLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'from',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> fromBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'from',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> lfdnrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lfdnr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      lfdnrGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lfdnr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> lfdnrLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lfdnr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> lfdnrBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lfdnr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> lfdnrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lfdnr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> lfdnrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lfdnr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> lfdnrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lfdnr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> lfdnrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lfdnr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> lfdnrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lfdnr',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      lfdnrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lfdnr',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationGPSIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locationGPS',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      locationGPSIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locationGPS',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plz',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'plz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'plz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'plz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'plz',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> plzIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plz',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      plzIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'plz',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'route',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'route',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'route',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> routeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'route',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'route',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'route',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'route',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'route',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeGPSLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'routeGPS',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeGPSIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'routeGPS',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeGPSIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'routeGPS',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeGPSLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'routeGPS',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeGPSLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'routeGPS',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      routeGPSLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'routeGPS',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> toEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'to',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> toGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'to',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> toLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'to',
        value: value,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> toBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'to',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> topicEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      topicGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> topicLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> topicBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topic',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> topicStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'topic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> topicEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'topic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> topicContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'topic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> topicMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'topic',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> topicIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topic',
        value: '',
      ));
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition>
      topicIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'topic',
        value: '',
      ));
    });
  }
}

extension MarkerModelQueryObject
    on QueryBuilder<MarkerModel, MarkerModel, QFilterCondition> {
  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> locationGPS(
      FilterQuery<LatLng> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'locationGPS');
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterFilterCondition> routeGPSElement(
      FilterQuery<LatLng> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'routeGPS');
    });
  }
}

extension MarkerModelQueryLinks
    on QueryBuilder<MarkerModel, MarkerModel, QFilterCondition> {}

extension MarkerModelQuerySortBy
    on QueryBuilder<MarkerModel, MarkerModel, QSortBy> {
  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByLfdnr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lfdnr', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByLfdnrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lfdnr', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByPlz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plz', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByPlzDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plz', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'to', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'to', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByTopic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topic', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> sortByTopicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topic', Sort.desc);
    });
  }
}

extension MarkerModelQuerySortThenBy
    on QueryBuilder<MarkerModel, MarkerModel, QSortThenBy> {
  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByLfdnr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lfdnr', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByLfdnrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lfdnr', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByPlz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plz', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByPlzDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plz', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'to', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'to', Sort.desc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByTopic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topic', Sort.asc);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QAfterSortBy> thenByTopicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'topic', Sort.desc);
    });
  }
}

extension MarkerModelQueryWhereDistinct
    on QueryBuilder<MarkerModel, MarkerModel, QDistinct> {
  QueryBuilder<MarkerModel, MarkerModel, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QDistinct> distinctByFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'from');
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QDistinct> distinctByLfdnr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lfdnr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QDistinct> distinctByPlz(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plz', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QDistinct> distinctByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'route');
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QDistinct> distinctByTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'to');
    });
  }

  QueryBuilder<MarkerModel, MarkerModel, QDistinct> distinctByTopic(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'topic', caseSensitive: caseSensitive);
    });
  }
}

extension MarkerModelQueryProperty
    on QueryBuilder<MarkerModel, MarkerModel, QQueryProperty> {
  QueryBuilder<MarkerModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MarkerModel, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<MarkerModel, DateTime, QQueryOperations> fromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'from');
    });
  }

  QueryBuilder<MarkerModel, String, QQueryOperations> lfdnrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lfdnr');
    });
  }

  QueryBuilder<MarkerModel, String, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<MarkerModel, LatLng?, QQueryOperations> locationGPSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationGPS');
    });
  }

  QueryBuilder<MarkerModel, String, QQueryOperations> plzProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plz');
    });
  }

  QueryBuilder<MarkerModel, List<String>, QQueryOperations> routeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'route');
    });
  }

  QueryBuilder<MarkerModel, List<LatLng>, QQueryOperations> routeGPSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'routeGPS');
    });
  }

  QueryBuilder<MarkerModel, DateTime, QQueryOperations> toProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'to');
    });
  }

  QueryBuilder<MarkerModel, String, QQueryOperations> topicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'topic');
    });
  }
}
