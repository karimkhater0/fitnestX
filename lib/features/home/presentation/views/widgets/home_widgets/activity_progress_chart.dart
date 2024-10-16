import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/widgets/bottom_titles_chart_widget.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class ActivityProgressChart extends StatelessWidget {
  const ActivityProgressChart({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 200,
      radius: 20,
      child: BarChart(
        BarChartData(
          borderData: FlBorderData(show: false),
          gridData: const FlGridData(show: false),
          maxY: 100,
          minY: 0,
          groupsSpace: (MediaQuery.of(context).size.width - 100 - (7 * 22)) / 6,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) =>
                    BottomTitlesChartWidget(value: value.floor()),
              ),
            ),
            leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  toY: 32,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: kBlueGradient,
                  width: 22,
                ),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                  toY: 76,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: kPurpleGradient,
                  width: 22,
                ),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(
                  toY: 50,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: kBlueGradient,
                  width: 22,
                ),
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(
                  toY: 65,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: kPurpleGradient,
                  width: 22,
                ),
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(
                  toY: 80,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: kBlueGradient,
                  width: 22,
                ),
              ],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(
                  toY: 30,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: kPurpleGradient,
                  width: 22,
                ),
              ],
            ),
            BarChartGroupData(
              x: 6,
              barRods: [
                BarChartRodData(
                  toY: 66,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  gradient: kBlueGradient,
                  width: 22,
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
