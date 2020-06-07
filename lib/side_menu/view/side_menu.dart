import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: Text('Statistics App'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Update the state of the app.
            // ...
            Navigator.pushReplacementNamed(context, "home");
          },
        ),
        ListTile(
          title: Text(
            'Marketing',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Update the state of the app.
            // ...
            Navigator.pushReplacementNamed(context, "marketing");
          },
        ),
        ListTile(
          title: Text(
            'Operation',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Update the state of the app.
            // ...
            Navigator.pushReplacementNamed(context, "operation");
          },
        ),
      ],
    );
  }
}
