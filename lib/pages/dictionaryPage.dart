import 'package:flutter/material.dart';
import 'package:ebee_test/navigationDrawer/navigationDrawer.dart';
import 'package:ebee_test/ebee_database.dart';

class dictionaryPage extends StatelessWidget {
  static const String routeName = '/dictionaryPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Dictionary"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Display all words in database")));
  }
}