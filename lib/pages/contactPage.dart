import 'package:flutter/material.dart';
import 'package:ebee_test/navigationDrawer/navigationDrawer.dart';

class contactPage extends StatelessWidget {
  static const String routeName = '/contactPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
        ),
        drawer: navigationDrawer(),
        body: Center(
          child: ListView(
            children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(40,40,40,0),
                  child: Text("Hideki (she/her) is an Experimental Psychology graduate student ."
                              " She's interested in researching social bias and its"
                              " manifestations across various settings (e.g., "
                              "in human-robot interactions). \n\n "
                              "Jim (they/them) is pursuing a Master's in Computer Science. They are an experienced developer"
                              " primarily concerned with delivering personally optimized software to users, and strives to bring about positive impact through ethical development. \n\n"
                              "Cecy (she/her) is a Master's student as well, in Sociology. Her interests include"
                              " the reproduction and reinforcement of existing power structures via computer technologies (e.g., robots, biased algorithms).\n\n",
                    style:
                    TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                      height: 1.25,
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsets.fromLTRB(40,0,40,40),
                child: Text("You can reach us at ebee@decolores.soy",
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.5,
                    height: 1.25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(100,0,100,50),
                child: Image( //padding is applied to child image
                  image: AssetImage('./img/ebee.jpg'),
                  height: 300,
                ),
              ),
            ]
        )
    )
    );
  }
}