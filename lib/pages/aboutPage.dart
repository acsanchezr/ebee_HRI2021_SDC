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
        body: Center(
            child: ListView(addAutomaticKeepAlives: false,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(40,40,40,0),
                    child: Image( //padding is applied to child image
                      image: AssetImage('./img/about_talk-01.png'),
                      width: 300,
                      height: 300,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text("This project rose as an effort from the authors "
                      "to address vocabulary that could be hurtful for others, and "
                      "that might be used unawarely. For instance, it is common for "
                      "us to use 'guys' when referring to a group of people regardless "
                      "of their gender. \nebee is a companion whose purpose is "
                    "to help us achieve our goal of increasing awareness of what we say,"
                    " so we can work towards improving ourselves. \nWe hope you find her as helpful as we do.\n"
                    "\n\nSincerely,\n\nHideki, Cecy, and Jim",
                      style:
                      TextStyle(
                        fontSize: 18,
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