import 'package:flutter/material.dart';
import 'package:ebee_test/navigationDrawer/navigationDrawer.dart';

class homePage extends StatelessWidget {
  static const String routeName = '/homePage';

  // homePage({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: navigationDrawer(),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(100,50,100,0),
                child:
                  Image(
                    image: AssetImage('./img/ebee.jpg'),
                    height: 300,
                  ),
              ),
              Padding(
                  padding: EdgeInsets.all(40.0),
                child: Text(
                    "Hi! I'm ebee, a social agent designed for helping you achieve a more inclusive vocabulary. "
                    "I look forward to learning together!",
                style:
                  TextStyle(
                    fontSize: 20,
                    letterSpacing: 0.5,
                    height: 1.25,
                  ),
                ),
              )
              // Text()
            ]
          )
        )
    );
  }
}