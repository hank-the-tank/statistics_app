import 'package:flutter/foundation.dart';
import 'package:statisticsapp/operation/model/fund.dart';
import 'dart:collection';
import 'package:flutter/material.dart';

class FundData extends ChangeNotifier {
  List<Fund> _funds = [
    Fund(name: 'AMP', number: "\$ 100,000,000"),
    Fund(name: 'ANZ', number: "\$ 50,000,000"),
    Fund(name: 'AIA', number: "\$ 120,000,000"),
  ];

  UnmodifiableListView<Fund> get funds {
    return UnmodifiableListView(_funds);
  }

  int get numberofFunds {
    return _funds.length;
  }
}
