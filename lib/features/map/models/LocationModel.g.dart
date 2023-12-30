// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocationModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocationModelCollection on Isar {
  IsarCollection<LocationModel> get locationModels => this.collection();
}

const LocationModelSchema = CollectionSchema(
  name: r'LocationModel',
  id: 5574495368489612639,
  properties: {
    r'location': PropertySchema(
      id: 0,
      name: r'location',
      type: IsarType.object,
      target: r'LatLng',
    ),
    r'locationString': PropertySchema(
      id: 1,
      name: r'locationString',
      type: IsarType.string,
    )
  },
  estimateSize: _locationModelEstimateSize,
  serialize: _locationModelSerialize,
  deserialize: _locationModelDeserialize,
  deserializeProp: _locationModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'LatLng': LatLngSchema},
  getId: _locationModelGetId,
  getLinks: _locationModelGetLinks,
  attach: _locationModelAttach,
  version: '3.1.0+1',
);

int _locationModelEstimateSize(
  LocationModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      LatLngSchema.estimateSize(
          object.location, allOffsets[LatLng]!, allOffsets);
  bytesCount += 3 + object.locationString.length * 3;
  return bytesCount;
}

void _locationModelSerialize(
  LocationModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<LatLng>(
    offsets[0],
    allOffsets,
    LatLngSchema.serialize,
    object.location,
  );
  writer.writeString(offsets[1], object.locationString);
}

LocationModel _locationModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocationModel(
    reader.readString(offsets[1]),
    reader.readObjectOrNull<LatLng>(
          offsets[0],
          LatLngSchema.deserialize,
          allOffsets,
        ) ??
        LatLng(),
  );
  object.id = id;
  return object;
}

P _locationModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<LatLng>(
            offset,
            LatLngSchema.deserialize,
            allOffsets,
          ) ??
          LatLng()) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _locationModelGetId(LocationModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _locationModelGetLinks(LocationModel object) {
  return [];
}

void _locationModelAttach(
    IsarCollection<dynamic> col, Id id, LocationModel object) {
  object.id = id;
}

extension LocationModelQueryWhereSort
    on QueryBuilder<LocationModel, LocationModel, QWhere> {
  QueryBuilder<LocationModel, LocationModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocationModelQueryWhere
    on QueryBuilder<LocationModel, LocationModel, QWhereClause> {
  QueryBuilder<LocationModel, LocationModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<LocationModel, LocationModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterWhereClause> idBetween(
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

extension LocationModelQueryFilter
    on QueryBuilder<LocationModel, LocationModel, QFilterCondition> {
  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
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

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationString',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locationString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locationString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locationString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locationString',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationString',
        value: '',
      ));
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition>
      locationStringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locationString',
        value: '',
      ));
    });
  }
}

extension LocationModelQueryObject
    on QueryBuilder<LocationModel, LocationModel, QFilterCondition> {
  QueryBuilder<LocationModel, LocationModel, QAfterFilterCondition> location(
      FilterQuery<LatLng> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'location');
    });
  }
}

extension LocationModelQueryLinks
    on QueryBuilder<LocationModel, LocationModel, QFilterCondition> {}

extension LocationModelQuerySortBy
    on QueryBuilder<LocationModel, LocationModel, QSortBy> {
  QueryBuilder<LocationModel, LocationModel, QAfterSortBy>
      sortByLocationString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationString', Sort.asc);
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterSortBy>
      sortByLocationStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationString', Sort.desc);
    });
  }
}

extension LocationModelQuerySortThenBy
    on QueryBuilder<LocationModel, LocationModel, QSortThenBy> {
  QueryBuilder<LocationModel, LocationModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterSortBy>
      thenByLocationString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationString', Sort.asc);
    });
  }

  QueryBuilder<LocationModel, LocationModel, QAfterSortBy>
      thenByLocationStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationString', Sort.desc);
    });
  }
}

extension LocationModelQueryWhereDistinct
    on QueryBuilder<LocationModel, LocationModel, QDistinct> {
  QueryBuilder<LocationModel, LocationModel, QDistinct>
      distinctByLocationString({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationString',
          caseSensitive: caseSensitive);
    });
  }
}

extension LocationModelQueryProperty
    on QueryBuilder<LocationModel, LocationModel, QQueryProperty> {
  QueryBuilder<LocationModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LocationModel, LatLng, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<LocationModel, String, QQueryOperations>
      locationStringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationString');
    });
  }
}
