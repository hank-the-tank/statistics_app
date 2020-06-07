import 'package:flutter/material.dart';
import 'package:statisticsapp/components/side_menu/view/side_menu.dart';
import 'package:statisticsapp/components/chart/view/chart.dart';

class Home extends StatelessWidget {
  static const String id = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statistics"),
      ),
      drawer: SideMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Chart(),
          Chart(),
        ],
      ),
    );
  }
}
