import 'package:flutter/material.dart';
import 'package:statisticsapp/side_menu/view/side_menu.dart';

class Marketing extends StatelessWidget {
  static const String id = 'marketing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marketing"),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text("Marketing"),
      ),
    );
  }
}
