import 'package:flutter/material.dart';
import 'package:statisticsapp/components/side_menu/view/side_menu.dart';

class Operation extends StatelessWidget {
  static const String id = 'operation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operation"),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text("Operation"),
      ),
    );
  }
}
