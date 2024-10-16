import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/bottom_titles_chart_widget.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';


class WorkoutTrackerChart extends StatelessWidget {
  const WorkoutTrackerChart({super.key});


  final List<FlSpot> cardioData = const [
    FlSpot(0, 60),  // Monday: 60% progress
    FlSpot(1, 45),  // Tuesday: 45%
    FlSpot(2, 80),  // Wednesday: 80%
    FlSpot(3, 50),  // Thursday: 50%
    FlSpot(4, 90),  // Friday: 90%
    FlSpot(5, 40),  // Saturday: 40%
    FlSpot(6, 75),  // Sunday: 75%
  ];
  final List<FlSpot> strengthData = const [
    FlSpot(0, 70),  // Monday: 70% progress
    FlSpot(1, 50),  // Tuesday: 50%
    FlSpot(2, 65),  // Wednesday: 65%
    FlSpot(3, 40),  // Thursday: 40%
    FlSpot(4, 60),  // Friday: 85%
    FlSpot(5, 30),  // Saturday: 30%
    FlSpot(6, 60),  // Sunday: 60%
  ];
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.only(top: 100, right: 30, left: 30),
      height: 150,
      radius: 20,
      color: Colors.transparent,
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: 100,
          borderData: FlBorderData(show: false),

          ///Background Lines
          gridData: FlGridData(
            horizontalInterval: 20,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (val)=>const FlLine(
              color: kGreyLight,
              strokeWidth: 1.2,
            ),

          ),


          ///Data
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              spots: cardioData,
              color: Colors.white,
              barWidth: 1,
              dotData: const FlDotData(
                  show: false
              ),
            ),
            LineChartBarData(
              isCurved: true,
              spots: strengthData,
              color: kGreyLight,
              barWidth: 1,
              dotData: const FlDotData(
                  show: false
              ),

            ),
          ],

          ///Titles
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                getTitlesWidget: (val, title){
                  return Text(
                    "${val.floor().toString()}%",
                    style: Styles.textStyleCaptionRegular.copyWith(
                        color: Colors.white
                    ),
                  );
                },
                showTitles: true,
                maxIncluded: true,
                minIncluded: true,
                interval: 20,
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1, // Interval between titles
                getTitlesWidget: (value,meta)=>BottomTitlesChartWidget(
                  value:value.floor(),color: Colors.white,
                ),
              ),
            ),



          ),
        ),
      ),
    );
  }
}
