import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; //avoid errors by flutter upgrade
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:ebee_test/repositories/db_connect.dart';

class ebee {  //define ebee data model
  final int id; // id is a Dart int, stored as an INTEGER SQLite Datatype.
  final String word;  //word is a Dart String, stored as a TEXT SQLite Datatype.

  ebee({this.id, this.word}); //constructor

  //convert an ebee object to Map (keys must correspond to names of db columns
  Map<String, dynamic> toMap(){
    return{
      'id':id,
      'word':word,
    };
  }
}

/*Function to Insert new item*/
Future<void> insertWord(ebee newWord) async {
  final Database db = await database;

  await db.insert(
    'guys',
    newWord.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,  //use in case data is repeated
  );
}






