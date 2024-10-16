import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/features/home/presentation/views/sleep_schedule_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class DailySleepScheduleContainer extends StatelessWidget {
  const DailySleepScheduleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: CustomContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        radius: 16,
        color: kBabyBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Daily Sleep Schedule',
              style: Styles.textStyleMediumTextMedium.copyWith(
                color: Colors.black
              ),
            ),
            CustomButton(
              onPressed: (){
                navigateTo(context, const SleepScheduleView());
              },
              height: 30,
              width: 70,
              linearGradient: kBlueGradient,
              text: 'check',
              textStyle: Styles.textStyleCaptionRegular.copyWith(
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
