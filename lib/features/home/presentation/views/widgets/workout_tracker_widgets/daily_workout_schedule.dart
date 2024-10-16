import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class DailyWorkoutSchedule extends StatelessWidget {
  const DailyWorkoutSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 30),
      child: CustomContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        radius: 16,
        color: kBabyBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Daily Workout Schedule',
              style: Styles.textStyleMediumTextMedium.copyWith(
                color: Colors.black
              ),
            ),
            CustomButton(
              text: 'Check',
              textStyle: Styles.textStyleSmallTextRegular.copyWith(
                color: Colors.white,
              ),
              width: 70,
              height: 30,
              onPressed: (){},
              linearGradient: kBlueGradient,

            ),
          ],
        ),
      ),
    );
  }
}
