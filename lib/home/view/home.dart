import 'package:flutter/material.dart';
import 'package:statisticsapp/components/icon_content/view/icon_content.dart';
import 'package:statisticsapp/components/side_menu/view/side_menu.dart';
import 'package:statisticsapp/components/chart/view/chart.dart';
import 'package:statisticsapp/components/figure/view/figure.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:statisticsapp/components/bar_chart/view/bar_chart.dart';

class Home extends StatelessWidget {
  static const String id = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statistics"),
      ),
      drawer: SideMenu(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Figure(
                  colour: Colors.lightBlueAccent,
                  cardChild: IconContent(
                    label: "160K",
                    icon: FontAwesomeIcons.odnoklassniki,
                  ),
                ),
              ),
              Expanded(
                child: Figure(
                  colour: Colors.lightBlueAccent,
                  cardChild: IconContent(
                    label: "500M",
                    icon: FontAwesomeIcons.dollarSign,
                  ),
                ),
              ),
            ],
          ),
          Chart(),
          BarChart1(),
        ],
      ),
    );
  }
}
