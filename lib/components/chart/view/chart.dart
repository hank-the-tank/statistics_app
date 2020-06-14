import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LineChart(mainData()),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        textStyle: const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16),
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return 'J';
            case 1:
              return 'F';
            case 2:
              return 'M';
            case 3:
              return 'A';
            case 4:
              return 'M';
            case 5:
              return 'J';
            case 6:
              return 'J';
            case 7:
              return 'A';
            case 8:
              return 'S';
            case 9:
              return 'O';
            case 10:
              return 'N';
            case 11:
              return 'D';
          }
          return '';
        },
        margin: 8,
      ),
      leftTitles: SideTitles(
        showTitles: true,
        textStyle: const TextStyle(
          color: Color(0xff67727d),
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '1M';
            case 3:
              return '5M';
            case 5:
              return '10M';
          }
          return '';
        },
        reservedSize: 28,
        margin: 12,
      ),
    ),
    borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d), width: 0.5)),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(1, 2),
          FlSpot(2, 5),
          FlSpot(3, 3),
          FlSpot(4, 4),
          FlSpot(5, 3),
          FlSpot(6, 4),
          FlSpot(7, 5),
          FlSpot(8, 3),
          FlSpot(9, 4),
          FlSpot(10, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(show: false),
      ),
    ],
  );
}
