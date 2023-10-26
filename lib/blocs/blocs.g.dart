// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocs.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConfigurationCWProxy {
  Configuration id(String id);

  Configuration themeMode(ThemeMode themeMode);

  Configuration isTrueColors(bool isTrueColors);

  Configuration isMaterial3(bool isMaterial3);

  Configuration materialColorIndex(int materialColorIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Configuration(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Configuration(...).copyWith(id: 12, name: "My name")
  /// ````
  Configuration call({
    String? id,
    ThemeMode? themeMode,
    bool? isTrueColors,
    bool? isMaterial3,
    int? materialColorIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfConfiguration.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfConfiguration.copyWith.fieldName(...)`
class _$ConfigurationCWProxyImpl implements _$ConfigurationCWProxy {
  const _$ConfigurationCWProxyImpl(this._value);

  final Configuration _value;

  @override
  Configuration id(String id) => this(id: id);

  @override
  Configuration themeMode(ThemeMode themeMode) => this(themeMode: themeMode);

  @override
  Configuration isTrueColors(bool isTrueColors) =>
      this(isTrueColors: isTrueColors);

  @override
  Configuration isMaterial3(bool isMaterial3) => this(isMaterial3: isMaterial3);

  @override
  Configuration materialColorIndex(int materialColorIndex) =>
      this(materialColorIndex: materialColorIndex);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Configuration(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Configuration(...).copyWith(id: 12, name: "My name")
  /// ````
  Configuration call({
    Object? id = const $CopyWithPlaceholder(),
    Object? themeMode = const $CopyWithPlaceholder(),
    Object? isTrueColors = const $CopyWithPlaceholder(),
    Object? isMaterial3 = const $CopyWithPlaceholder(),
    Object? materialColorIndex = const $CopyWithPlaceholder(),
  }) {
    return Configuration(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      themeMode: themeMode == const $CopyWithPlaceholder() || themeMode == null
          ? _value.themeMode
          // ignore: cast_nullable_to_non_nullable
          : themeMode as ThemeMode,
      isTrueColors:
          isTrueColors == const $CopyWithPlaceholder() || isTrueColors == null
              ? _value.isTrueColors
              // ignore: cast_nullable_to_non_nullable
              : isTrueColors as bool,
      isMaterial3:
          isMaterial3 == const $CopyWithPlaceholder() || isMaterial3 == null
              ? _value.isMaterial3
              // ignore: cast_nullable_to_non_nullable
              : isMaterial3 as bool,
      materialColorIndex: materialColorIndex == const $CopyWithPlaceholder() ||
              materialColorIndex == null
          ? _value.materialColorIndex
          // ignore: cast_nullable_to_non_nullable
          : materialColorIndex as int,
    );
  }
}

extension $ConfigurationCopyWith on Configuration {
  /// Returns a callable class that can be used as follows: `instanceOfConfiguration.copyWith(...)` or like so:`instanceOfConfiguration.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConfigurationCWProxy get copyWith => _$ConfigurationCWProxyImpl(this);
}

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetConfigurationCollection on Isar {
  IsarCollection<String, Configuration> get configurations => this.collection();
}

const ConfigurationSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Configuration',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'themeMode',
        type: IsarType.byte,
        enumMap: {"system": 0, "light": 1, "dark": 2},
      ),
      IsarPropertySchema(
        name: 'isTrueColors',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'isMaterial3',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'materialColorIndex',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, Configuration>(
    serialize: serializeConfiguration,
    deserialize: deserializeConfiguration,
    deserializeProperty: deserializeConfigurationProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeConfiguration(IsarWriter writer, Configuration object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeByte(writer, 2, object.themeMode.index);
  IsarCore.writeBool(writer, 3, object.isTrueColors);
  IsarCore.writeBool(writer, 4, object.isMaterial3);
  IsarCore.writeLong(writer, 5, object.materialColorIndex);
  return Isar.fastHash(object.id);
}

@isarProtected
Configuration deserializeConfiguration(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? 'Configurations';
  final ThemeMode _themeMode;
  {
    if (IsarCore.readNull(reader, 2)) {
      _themeMode = ThemeMode.system;
    } else {
      _themeMode = _configurationThemeMode[IsarCore.readByte(reader, 2)] ??
          ThemeMode.system;
    }
  }
  final bool _isTrueColors;
  _isTrueColors = IsarCore.readBool(reader, 3);
  final bool _isMaterial3;
  _isMaterial3 = IsarCore.readBool(reader, 4);
  final int _materialColorIndex;
  {
    final value = IsarCore.readLong(reader, 5);
    if (value == -9223372036854775808) {
      _materialColorIndex = 0;
    } else {
      _materialColorIndex = value;
    }
  }
  final object = Configuration(
    id: _id,
    themeMode: _themeMode,
    isTrueColors: _isTrueColors,
    isMaterial3: _isMaterial3,
    materialColorIndex: _materialColorIndex,
  );
  return object;
}

@isarProtected
dynamic deserializeConfigurationProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? 'Configurations';
    case 2:
      {
        if (IsarCore.readNull(reader, 2)) {
          return ThemeMode.system;
        } else {
          return _configurationThemeMode[IsarCore.readByte(reader, 2)] ??
              ThemeMode.system;
        }
      }
    case 3:
      return IsarCore.readBool(reader, 3);
    case 4:
      return IsarCore.readBool(reader, 4);
    case 5:
      {
        final value = IsarCore.readLong(reader, 5);
        if (value == -9223372036854775808) {
          return 0;
        } else {
          return value;
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _ConfigurationUpdate {
  bool call({
    required String id,
    ThemeMode? themeMode,
    bool? isTrueColors,
    bool? isMaterial3,
    int? materialColorIndex,
  });
}

class _ConfigurationUpdateImpl implements _ConfigurationUpdate {
  const _ConfigurationUpdateImpl(this.collection);

  final IsarCollection<String, Configuration> collection;

  @override
  bool call({
    required String id,
    Object? themeMode = ignore,
    Object? isTrueColors = ignore,
    Object? isMaterial3 = ignore,
    Object? materialColorIndex = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (themeMode != ignore) 2: themeMode as ThemeMode?,
          if (isTrueColors != ignore) 3: isTrueColors as bool?,
          if (isMaterial3 != ignore) 4: isMaterial3 as bool?,
          if (materialColorIndex != ignore) 5: materialColorIndex as int?,
        }) >
        0;
  }
}

sealed class _ConfigurationUpdateAll {
  int call({
    required List<String> id,
    ThemeMode? themeMode,
    bool? isTrueColors,
    bool? isMaterial3,
    int? materialColorIndex,
  });
}

class _ConfigurationUpdateAllImpl implements _ConfigurationUpdateAll {
  const _ConfigurationUpdateAllImpl(this.collection);

  final IsarCollection<String, Configuration> collection;

  @override
  int call({
    required List<String> id,
    Object? themeMode = ignore,
    Object? isTrueColors = ignore,
    Object? isMaterial3 = ignore,
    Object? materialColorIndex = ignore,
  }) {
    return collection.updateProperties(id, {
      if (themeMode != ignore) 2: themeMode as ThemeMode?,
      if (isTrueColors != ignore) 3: isTrueColors as bool?,
      if (isMaterial3 != ignore) 4: isMaterial3 as bool?,
      if (materialColorIndex != ignore) 5: materialColorIndex as int?,
    });
  }
}

extension ConfigurationUpdate on IsarCollection<String, Configuration> {
  _ConfigurationUpdate get update => _ConfigurationUpdateImpl(this);

  _ConfigurationUpdateAll get updateAll => _ConfigurationUpdateAllImpl(this);
}

sealed class _ConfigurationQueryUpdate {
  int call({
    ThemeMode? themeMode,
    bool? isTrueColors,
    bool? isMaterial3,
    int? materialColorIndex,
  });
}

class _ConfigurationQueryUpdateImpl implements _ConfigurationQueryUpdate {
  const _ConfigurationQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Configuration> query;
  final int? limit;

  @override
  int call({
    Object? themeMode = ignore,
    Object? isTrueColors = ignore,
    Object? isMaterial3 = ignore,
    Object? materialColorIndex = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (themeMode != ignore) 2: themeMode as ThemeMode?,
      if (isTrueColors != ignore) 3: isTrueColors as bool?,
      if (isMaterial3 != ignore) 4: isMaterial3 as bool?,
      if (materialColorIndex != ignore) 5: materialColorIndex as int?,
    });
  }
}

extension ConfigurationQueryUpdate on IsarQuery<Configuration> {
  _ConfigurationQueryUpdate get updateFirst =>
      _ConfigurationQueryUpdateImpl(this, limit: 1);

  _ConfigurationQueryUpdate get updateAll =>
      _ConfigurationQueryUpdateImpl(this);
}

class _ConfigurationQueryBuilderUpdateImpl
    implements _ConfigurationQueryUpdate {
  const _ConfigurationQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Configuration, Configuration, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? themeMode = ignore,
    Object? isTrueColors = ignore,
    Object? isMaterial3 = ignore,
    Object? materialColorIndex = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (themeMode != ignore) 2: themeMode as ThemeMode?,
        if (isTrueColors != ignore) 3: isTrueColors as bool?,
        if (isMaterial3 != ignore) 4: isMaterial3 as bool?,
        if (materialColorIndex != ignore) 5: materialColorIndex as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension ConfigurationQueryBuilderUpdate
    on QueryBuilder<Configuration, Configuration, QOperations> {
  _ConfigurationQueryUpdate get updateFirst =>
      _ConfigurationQueryBuilderUpdateImpl(this, limit: 1);

  _ConfigurationQueryUpdate get updateAll =>
      _ConfigurationQueryBuilderUpdateImpl(this);
}

const _configurationThemeMode = {
  0: ThemeMode.system,
  1: ThemeMode.light,
  2: ThemeMode.dark,
};

extension ConfigurationQueryFilter
    on QueryBuilder<Configuration, Configuration, QFilterCondition> {
  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeGreaterThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeGreaterThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeLessThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeLessThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeBetween(
    ThemeMode lower,
    ThemeMode upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      isTrueColorsEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      isMaterial3EqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      materialColorIndexEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      materialColorIndexGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      materialColorIndexGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      materialColorIndexLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      materialColorIndexLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      materialColorIndexBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension ConfigurationQueryObject
    on QueryBuilder<Configuration, Configuration, QFilterCondition> {}

extension ConfigurationQuerySortBy
    on QueryBuilder<Configuration, Configuration, QSortBy> {
  QueryBuilder<Configuration, Configuration, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy> sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      sortByIsTrueColors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      sortByIsTrueColorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy> sortByIsMaterial3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      sortByIsMaterial3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      sortByMaterialColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      sortByMaterialColorIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension ConfigurationQuerySortThenBy
    on QueryBuilder<Configuration, Configuration, QSortThenBy> {
  QueryBuilder<Configuration, Configuration, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy> thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      thenByIsTrueColors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      thenByIsTrueColorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy> thenByIsMaterial3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      thenByIsMaterial3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      thenByMaterialColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterSortBy>
      thenByMaterialColorIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension ConfigurationQueryWhereDistinct
    on QueryBuilder<Configuration, Configuration, QDistinct> {
  QueryBuilder<Configuration, Configuration, QAfterDistinct>
      distinctByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterDistinct>
      distinctByIsTrueColors() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterDistinct>
      distinctByIsMaterial3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterDistinct>
      distinctByMaterialColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension ConfigurationQueryProperty1
    on QueryBuilder<Configuration, Configuration, QProperty> {
  QueryBuilder<Configuration, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Configuration, ThemeMode, QAfterProperty> themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Configuration, bool, QAfterProperty> isTrueColorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Configuration, bool, QAfterProperty> isMaterial3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Configuration, int, QAfterProperty>
      materialColorIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension ConfigurationQueryProperty2<R>
    on QueryBuilder<Configuration, R, QAfterProperty> {
  QueryBuilder<Configuration, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Configuration, (R, ThemeMode), QAfterProperty>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Configuration, (R, bool), QAfterProperty>
      isTrueColorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Configuration, (R, bool), QAfterProperty> isMaterial3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Configuration, (R, int), QAfterProperty>
      materialColorIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension ConfigurationQueryProperty3<R1, R2>
    on QueryBuilder<Configuration, (R1, R2), QAfterProperty> {
  QueryBuilder<Configuration, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Configuration, (R1, R2, ThemeMode), QOperations>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Configuration, (R1, R2, bool), QOperations>
      isTrueColorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Configuration, (R1, R2, bool), QOperations>
      isMaterial3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Configuration, (R1, R2, int), QOperations>
      materialColorIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$watchConfigurationHash() =>
    r'33e168eaa169360eb4cdcbcf4b613c4c860cf5a6';

/// See also [watchConfiguration].
@ProviderFor(watchConfiguration)
final watchConfigurationProvider =
    AutoDisposeStreamProvider<Configuration?>.internal(
  watchConfiguration,
  name: r'watchConfigurationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$watchConfigurationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WatchConfigurationRef = AutoDisposeStreamProviderRef<Configuration?>;
String _$configurationHash() => r'b11e4b86dc32dcd3cc4e552823de8ef18b26d321';

/// See also [configuration].
@ProviderFor(configuration)
final configurationProvider = AutoDisposeProvider<Configuration?>.internal(
  configuration,
  name: r'configurationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$configurationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ConfigurationRef = AutoDisposeProviderRef<Configuration?>;
String _$questionsBlocHash() => r'68aa3193475bf72dac2a929e1c602c045dc0718b';

/// See also [QuestionsBloc].
@ProviderFor(QuestionsBloc)
final questionsBlocProvider =
    AutoDisposeNotifierProvider<QuestionsBloc, QuestionsBlocState>.internal(
  QuestionsBloc.new,
  name: r'questionsBlocProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$questionsBlocHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$QuestionsBloc = AutoDisposeNotifier<QuestionsBlocState>;
String _$configurationBlocHash() => r'1e8899da218c91934f60ef7f66b8bf3adca39934';

/// See also [ConfigurationBloc].
@ProviderFor(ConfigurationBloc)
final configurationBlocProvider =
    AutoDisposeNotifierProvider<ConfigurationBloc, Configuration?>.internal(
  ConfigurationBloc.new,
  name: r'configurationBlocProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$configurationBlocHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ConfigurationBloc = AutoDisposeNotifier<Configuration?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
