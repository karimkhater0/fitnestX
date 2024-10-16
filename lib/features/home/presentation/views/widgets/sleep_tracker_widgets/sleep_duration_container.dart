import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class SleepDurationContainer extends StatelessWidget {
  const SleepDurationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: CustomContainer(
        height: 102,
        radius: 20,
        color: kPinkLight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'You will get 8hours 10minutes for tonight',
              style: Styles.textStyleSmallTextRegular.copyWith(color: Colors.black),
            ),
            FAProgressBar(
              displayText: '%',
              currentValue: 96,

              progressGradient: kPurpleGradient,
              backgroundColor:kBorderColor,
              size: 20,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              maxValue: 100,

            ),

          ],
        ),
      ),
    );
  }
}
