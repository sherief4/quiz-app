import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Database? _database;

class DatabaseHelper {
  Future get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDB('data.db');
    return _database;
  }

  Future<Database> _initDB(String filePath) async {
    final String dbPath = await getDatabasesPath();
    final String path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future<void> _createDb(Database db, int version) async {
    await db.execute(
      '''CREATE TABLE CART (id INTEGER PRIMARY KEY AUTOINCREMENT, cartId INTEGER,categoryId INTEGER, productId INTEGER, product TEXT)''',
    );
  }

  Future<void> insertIntoDatabase({
    required String table,
    required Map<String, dynamic> data,
  }) async {
    final Database db = await database;
    await db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> deleteRecord({
    required String table,
    String? where,
    List<String>? whereArgs,
  }) async {
    final Database db = await database;
    await db.delete(table, where: where, whereArgs: whereArgs);
  }

  Future<void> clearTable(String table) async {
    final Database db = await database;
    db.delete(table);
  }

  Future<List<Map<String, dynamic>>> getFromDatabase({
    required String table,
    String? where,
    List<String>? whereArgs,
  }) async {
    final Database db = await database;
    return await db.query(table, where: where, whereArgs: whereArgs);
  }
}
