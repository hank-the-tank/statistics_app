import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statisticsapp/marketing/view/marketing.dart';
import 'package:statisticsapp/operation/view/operation.dart';
import 'home/view/home.dart';
import 'package:statisticsapp/home/view/home.dart';
import 'package:statisticsapp/operation/model/fund_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FundData(),
      child: MaterialApp(
        initialRoute: "home",
        routes: {
          Home.id: (context) => Home(),
          Marketing.id: (context) => Marketing(),
          Operation.id: (context) => Operation(),
        },
      ),
    );
  }
}
