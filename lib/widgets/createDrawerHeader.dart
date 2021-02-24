import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.black,
          // image: DecorationImage(
          //     fit: BoxFit.fill,
          //     image:  AssetImage('./img/ebee.jpg'))
      ),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("menu",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500))),
      ]));
}