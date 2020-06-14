import 'package:flutter/material.dart';
import 'package:statisticsapp/components/side_menu/view/side_menu.dart';
import 'package:statisticsapp/components/state_bar/view/state_bar.dart';

class Marketing extends StatelessWidget {
  static const String id = 'marketing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Marketing"),
        ),
        drawer: SideMenu(),
        body: Column(
          children: [
            StateBar(
              colour: Colors.lightBlueAccent,
              label: "Co-current customer",
              quantity: "800",
            ),
            StateBar(
              colour: Colors.lightBlueAccent,
              label: "Customer signing up",
              quantity: "10",
            ),
            StateBar(
              colour: Colors.lightBlueAccent,
              label: "Customer on landing",
              quantity: "50",
            ),
          ],
        ));
  }
}
