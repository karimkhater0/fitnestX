import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/bottom_titles_chart_widget.dart';

class SleepTrackerChart extends StatelessWidget {
  const SleepTrackerChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: LineChart(

          LineChartData(
            minY: 0,
            maxY: 10,

            backgroundColor: Colors.transparent,
            borderData: FlBorderData(show: false),
            gridData: const FlGridData(
              drawVerticalLine: false,
              drawHorizontalLine: true,
              horizontalInterval: 2,
            ),
            titlesData: FlTitlesData(
              topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                    minIncluded: true, maxIncluded: true,
                    showTitles: true,
                    interval: 2,
                    getTitlesWidget: (value, title){
                      return Text(
                        '${value.floor()}h',
                        style: Styles.textStyleCaptionRegular,
                      );
                    }
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    minIncluded: true, maxIncluded: true,
                    showTitles: true,
                    getTitlesWidget: (value, title){
                      return BottomTitlesChartWidget(value: value.floor());
                    }
                ),
              ),
            ),

            lineBarsData: [
              LineChartBarData(
                  isCurved: true,
                  gradient: kBlueGradient,
                  barWidth: 3,
                  shadow: const BoxShadow(
                    color: kBlueDark,
                    blurRadius: 10,
                    offset: Offset(0, 8),
                  ),
                  dotData: const FlDotData(show: false,),
                  spots: const [
                    FlSpot(0, 2),
                    FlSpot(1, 4.5),
                    FlSpot(2, 3),
                    FlSpot(3, 6.2),
                    FlSpot(4, 5),
                    FlSpot(5, 7.1),
                    FlSpot(6, 8),
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
