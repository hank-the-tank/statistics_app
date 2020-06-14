import 'package:flutter/material.dart';
import 'package:statisticsapp/components/fund_list_tile/view/fund_list_tile.dart';
import 'package:provider/provider.dart';
import 'package:statisticsapp/operation/model/fund_data.dart';

class FundList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FundData>(
      builder: (context, fundData, child) {
        return ListView.builder(
          itemCount: fundData.numberofFunds,
          itemBuilder: (context, index) {
            final fund = fundData.funds[index];
            return FundListTile(
              fundTitle: fund.name,
              fundNumber: fund.number,
            );
          },
        );
      },
    );
  }
}
