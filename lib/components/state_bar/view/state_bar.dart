import 'package:flutter/material.dart';

class StateBar extends StatelessWidget {
  StateBar({@required this.colour, this.label, this.quantity});

  final Color colour;
  final String label;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              label + ": ",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              quantity,
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
