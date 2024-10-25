import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceChart extends StatelessWidget {
  const PerformanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return SizedBox(
      height: height * 0.4,
      width: width * 0.6,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: true),
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              getTitles: (value) {
                // Display years as labels on the X-axis
                switch (value.toInt()) {
                  case 2015:
                    return '2015';
                  case 2016:
                    return '2016';
                  case 2017:
                    return '2017';
                  case 2018:
                    return '2018';
                  case 2019:
                    return '2019';
                  case 2020:
                    return '2020';
                }
                return '';
              },
            ),
            leftTitles: SideTitles(
              showTitles: true,
              interval: 10, // Set interval for Y-axis labels
              getTitles: (value) {
                // Display Y-axis values without 'k' suffix
                return value.toInt().toString(); // Remove 'k' formatting
              },
            ),
          ),
          borderData: FlBorderData(show: true),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              spots: [
                FlSpot(2015, 10),
                FlSpot(2016, 30),
                FlSpot(2017, 25),
                FlSpot(2018, 40),
                FlSpot(2019, 35),
                FlSpot(2020, 50),
              ],
              isStrokeCapRound: true,
              belowBarData: BarAreaData(show: true),
            ),
            LineChartBarData(
              isCurved: true,
              spots: [
                FlSpot(2015, 5),
                FlSpot(2016, 15),
                FlSpot(2017, 10),
                FlSpot(2018, 20),
                FlSpot(2019, 25),
                FlSpot(2020, 55),
              ],
              isStrokeCapRound: true,
              belowBarData: BarAreaData(show: true),
            ),
          ],
        ),
      ),
    );
  }
}
