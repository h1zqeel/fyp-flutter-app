import 'package:flutter/material.dart';
import 'TakeTest.dart';
import 'ContactUs.dart';
import 'Affiliate.dart';
import 'AboutUs.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          ListTile(
            leading: Icon(Icons.input),
            title: Text('Take test'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TakeTest()),
            )
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Affiliate Hospital'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Affiliate()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Contact Us'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('About Us'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUs()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
