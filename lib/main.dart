import 'package:flutter/material.dart';
import 'package:ebee_test/routes/pageRoute.dart';
import 'package:ebee_test/pages/homePage.dart';
import 'package:ebee_test/pages/aboutPage.dart';
import 'package:ebee_test/pages/add_wordPage.dart';
import 'package:ebee_test/pages/dictionaryPage.dart';
import 'package:ebee_test/pages/contactPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { //This widget is the root of your application.
  final appTitle = 'Ebee App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: appTitle,
      theme: ThemeData( //application theme
        primarySwatch: Colors.yellow,
        fontFamily: 'Montserrat',
      ),
      home: homePage(),
    routes: {
      pageRoutes.home: (context) => homePage(),
      pageRoutes.about: (context) => aboutPage(),
      pageRoutes.add_word: (context) => add_wordPage(),
      pageRoutes.dictionary: (context) => dictionaryPage(),
      pageRoutes.contact: (context) => contactPage(),
    },
    );
  } //close widget
} //close class
