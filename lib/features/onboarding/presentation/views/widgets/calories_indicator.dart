import 'package:flutter/material.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_container.dart';

class CaloriesIndicator extends StatelessWidget {
  const CaloriesIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientCircularProgressIndicator(
      progress: .7,
      size: 65,
      gradient: kBlueGradient,
      stroke: 8,
      backgroundColor: const Color(0xFFf3f5f8),
      child: Center(
          child: CustomContainer(
            padding: EdgeInsets.zero,
            height: 48,
            width: 48,
            radius: 100,
            gradient: kBlueGradient,
            child: Center(
              child: Text(
                '230 kCal left',
                textAlign: TextAlign.center,
                style: Styles.textStyleCaptionRegular
                    .copyWith(
                    color: Colors.white,
                    fontSize: 8

                ),
              ),
            ),
          )
      ),
    );
  }
}
