import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; //avoid errors by flutter upgrade
import 'dart:async';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   final Future<Database> database = openDatabase(
//     join(await getDatabasesPath(), 'ebee_database.db'),

//     onCreate: (db, version){
//       return db.execute(
//         "CREATE TABLE ebee(id INTEGER PRIMARY KEY, word TEXT)", //create table
//       );
//     },
//     version: 1,
//   );
// }

class DatabaseConnection{
  /*method to create a new database*/
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'ebee_database_sqflite');
    var database = await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);
    return database;
  }

  /*method to create a table in database*/
  _onCreatingDatabase(Database database, int version) async {
    await database.execute("CREATE TABLE dictionary (id INTEGER PRIMARY KEY, word TEXT)");
  }
}