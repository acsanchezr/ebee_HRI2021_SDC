import 'package:flutter/material.dart';
import 'package:ebee_test/navigationDrawer/navigationDrawer.dart';


class homePage extends StatelessWidget {
  static const String routeName = '/homePage';

  homePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          // Text("Home"),
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
                    height: 250,
                    width: 250,
                  ),
              ),
              Padding(
                  padding: EdgeInsets.all(30.0),
                child: Text(
                    "Meet Ebee! She's a robotic agent that will help in your "
                    "goal of not saying certain words.",
                style:
                  TextStyle(
                    fontSize: 16,
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