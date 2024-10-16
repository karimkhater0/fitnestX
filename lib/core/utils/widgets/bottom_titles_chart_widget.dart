import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../styles.dart';

class BottomTitlesChartWidget extends StatelessWidget {
  const BottomTitlesChartWidget({super.key, required this.value, this.color});

  final Color? color;
  final int value;
  final List<String> days = const ['Mon','Tue','Wed','Thu','Fri','Sat','Sun',];

  @override
  Widget build(BuildContext context) {
    return Text(
      days[value],
      style: Styles.textStyleSmallTextRegular.copyWith(color: color ?? kGreyDark),
    );
  }
}
