import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

const List<FlSpot> heartRateData = [
  FlSpot(0, 70),  // Start at 70 BPM
  FlSpot(1, 72),  // Slight increase
  FlSpot(2, 74),
  FlSpot(3, 73),
  FlSpot(4, 75),
  FlSpot(5, 78),  // Small rise
  FlSpot(6, 80),
  FlSpot(7, 77),
  FlSpot(8, 79),
  FlSpot(9, 82),
  FlSpot(10, 85),  // Higher peak
  FlSpot(11, 83),
  FlSpot(12, 81),
  FlSpot(13, 79),
  FlSpot(14, 76),
  FlSpot(15, 74),
  FlSpot(16, 73),
  FlSpot(17, 71),
  FlSpot(18, 70),  // Back to resting rate
  FlSpot(19, 72),
  FlSpot(20, 75),
  FlSpot(21, 77),
  FlSpot(22, 80),
  FlSpot(23, 82),
  FlSpot(24, 85),  // Peak again
  FlSpot(25, 83),
  FlSpot(26, 80),
  FlSpot(27, 78),
  FlSpot(28, 76),
  FlSpot(29, 74),
  FlSpot(30, 73),
  FlSpot(31, 71),
  FlSpot(32, 70),  // Resting rate again
  FlSpot(33, 72),
  FlSpot(34, 75),
  FlSpot(35, 80),
  FlSpot(36, 78),
  FlSpot(37, 76),
  FlSpot(38, 74),
  FlSpot(39, 73),
  FlSpot(40, 70),  // End of data
];
class HeartChart extends StatelessWidget {
  const HeartChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: 40,
        maxY: 120,
        maxX: 30,
        gridData: const FlGridData(
          show: false,
        ),
        borderData: FlBorderData(
          show: false,  // Remove the border around the chart
        ),
        lineBarsData: [
          LineChartBarData(
            spots: heartRateData,
            color: kBlueDark,
            barWidth: 3,
            dotData: const FlDotData(
                show: false
            ),

          ),
        ],
        titlesData: const FlTitlesData(
          show: false
        ),



      ),
    );
  }
}