import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class WorkoutTitleWidget extends StatelessWidget {
  const WorkoutTitleWidget({super.key, required this.text, this.padding});

  final String text;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: padding ?? 0),
        child: Text(
          text,
          style: Styles.textStyleLargeTextSemiBold,
        ),
      ),
    );
  }
}
