import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.pinkAccent,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          icon,
          size: 80.0,
        ),
      ],
    );
  }
}
