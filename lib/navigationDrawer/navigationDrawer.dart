import 'package:flutter/material.dart';
import 'package:ebee_test/widgets/createDrawerHeader.dart';
import 'package:ebee_test/widgets/createDrawerBodyItem.dart';
import 'package:ebee_test/routes/pageRoute.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.home),
          ),
          createDrawerBodyItem(
            icon: Icons.info_outline,
            text: 'About',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.about),
          ),
          createDrawerBodyItem(
            icon: Icons.add,
            text: 'Add Word',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.add_word),
          ),

          createDrawerBodyItem(
            icon: Icons.menu_book,
            text: 'Dictionary',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.dictionary),
          ),
          Divider(),

          createDrawerBodyItem(
            icon: Icons.contact_page,
            text: 'Contact Info',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.contact),
          ),
          // ListTile(
          //   title: Text('App version 1.0.0'),
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}