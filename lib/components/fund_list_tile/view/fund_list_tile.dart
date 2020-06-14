import 'package:flutter/material.dart';

class FundListTile extends StatelessWidget {
  final String fundTitle;
  final String fundNumber;

  FundListTile({
    this.fundTitle,
    this.fundNumber,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        fundTitle,
      ),
      subtitle: Text(
        fundNumber,
      ),
    );
  }
}
