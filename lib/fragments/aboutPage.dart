import 'package:flutter/material.dart';
import 'package:ebee_test/navigationDrawer/navigationDrawer.dart';

class aboutPage extends StatelessWidget {
  static const String routeName = '/aboutPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Explain reason behind project + mention it's for HRI2021")));
  }
}