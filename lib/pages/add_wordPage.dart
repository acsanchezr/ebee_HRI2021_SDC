import 'package:flutter/material.dart';
import 'package:ebee_test/navigationDrawer/navigationDrawer.dart';

class add_wordPage extends StatelessWidget {
  static const String routeName = '/add_wordPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Add Word"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Include stuff so user can add word to dictionary")));
  }
}