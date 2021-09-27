// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Favorite extends DataClass implements Insertable<Favorite> {
  final int id;
  final String name;
  final String category;
  final bool completed;
  Favorite(
      {required this.id,
      required this.name,
      required this.category,
      required this.completed});
  factory Favorite.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Favorite(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      completed: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}completed'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['category'] = Variable<String>(category);
    map['completed'] = Variable<bool>(completed);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      id: Value(id),
      name: Value(name),
      category: Value(category),
      completed: Value(completed),
    );
  }

  factory Favorite.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Favorite(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      category: serializer.fromJson<String>(json['category']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'category': serializer.toJson<String>(category),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  Favorite copyWith(
          {int? id, String? name, String? category, bool? completed}) =>
      Favorite(
        id: id ?? this.id,
        name: name ?? this.name,
        category: category ?? this.category,
        completed: completed ?? this.completed,
      );
  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('category: $category, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(category.hashCode, completed.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.id == this.id &&
          other.name == this.name &&
          other.category == this.category &&
          other.completed == this.completed);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> category;
  final Value<bool> completed;
  const FavoritesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.category = const Value.absent(),
    this.completed = const Value.absent(),
  });
  FavoritesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String category,
    this.completed = const Value.absent(),
  })  : name = Value(name),
        category = Value(category);
  static Insertable<Favorite> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? category,
    Expression<bool>? completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (category != null) 'category': category,
      if (completed != null) 'completed': completed,
    });
  }

  FavoritesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? category,
      Value<bool>? completed}) {
    return FavoritesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('category: $category, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FavoritesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _completedMeta = const VerificationMeta('completed');
  late final GeneratedColumn<bool?> completed = GeneratedColumn<bool?>(
      'completed', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (completed IN (0, 1))',
      defaultValue: Constant(false));
  @override
  List<GeneratedColumn> get $columns => [id, name, category, completed];
  @override
  String get aliasedName => _alias ?? 'favorites';
  @override
  String get actualTableName => 'favorites';
  @override
  VerificationContext validateIntegrity(Insertable<Favorite> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed']!, _completedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Favorite.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favorites];
}
