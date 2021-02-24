import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; //avoid errors by flutter upgrade
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'ebee_database.db'),

    onCreate: (db, version){
      return db.execute(
        "CREATE TABLE ebee(id INTEGER PRIMARY KEY, word TEXT)", //create table
      );
    },
    version: 1,
  );
}
