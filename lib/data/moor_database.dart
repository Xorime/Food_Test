import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Favorites extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get category => text()();
  BoolColumn get completed => boolean().withDefault(Constant(false))();
}

@UseMoor(tables: [Favorites])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(
          (FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite',
            logStatements: true,
          )),
        );

  @override
  int get schemaVersion => 1;

  Future<List<Favorite>> getAllFavorites() => select(favorites).get();

  Stream<List<Favorite>> watchAllFavorites() => select(favorites).watch();

  Future insertFavorite(Favorite favorite) => into(favorites).insert(favorite);

  Future updateFavorite(Favorite favorite) => update(favorites).replace(favorite);

  Future deleteFavorite(Favorite favorite) => delete(favorites).delete(favorite);
}
