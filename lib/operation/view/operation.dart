import 'package:flutter/material.dart';
import 'package:statisticsapp/components/fund_list/view/fund_list.dart';
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
        child: FundList(),
      ),
    );
  }
}
