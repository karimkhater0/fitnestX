import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/features/home/presentation/views/workout_schedule_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class ScheduleWorkoutContainer extends StatelessWidget {
  const ScheduleWorkoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(context, const WorkoutScheduleView());
      },
      child: CustomContainer(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        radius: 16,
        color: kBabyBlue,
        child: Row(
          children: [
            const Icon(IconlyLight.calendar,size: 22,color: kGrey,),
            const SizedBox(width: 10,),
            Expanded(
              child: Text(
                'Schedule Workout',
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyleSmallTextRegular.copyWith(color: kGrey),
              ),
            ),

            const Text(
              '5/27, 09:00 AM',
              style: Styles.textStyleCaptionRegular,
            ),

            const SizedBox(width: 10,),
            const Icon(
              IconlyLight.arrow_right_2,
              size: 16,
              color: kGrey,
            ),

          ],
        ),
      ),
    );
  }
}
