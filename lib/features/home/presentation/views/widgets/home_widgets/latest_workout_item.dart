import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/workout_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_icon.dart';
import '../../../../data/latest_workout_item_model.dart';


class LatestWorkoutItem extends StatelessWidget {
  const LatestWorkoutItem({super.key, required this.model});

  final LatestWorkoutItemModel model;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      height: 80,
      radius: 16,
      child: Row(
        children: [

          CustomContainer(
            padding: EdgeInsets.zero,
            height: 50,
            width: 50,
            radius: 100,
            gradient: kBlueGradient,
            child: SvgPicture.asset(model.svg,height: 45,width: 45,),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: Styles.textStyleSmallTextMedium,
                  ),
                  Text(
                    '${model.calories} Calories Burn | ${model.time} minutes',
                    style: Styles.textStyleCaptionRegular,
                  ),
                  WorkoutProgressBar(progress: model.progress,),
                ],
              ),
            ),
          ),

          GradientIcon(
            icon:IconlyLight.arrow_right_circle,
            gradient: kPurpleGradient,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
