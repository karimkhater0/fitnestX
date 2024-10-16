import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/core/utils/functions/nested_list_length.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_description_view_body.dart';
import 'package:fitness_app/features/home/presentation/views/workout_tracker_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_text.dart';
import '../../../../data/workout_model.dart';


class ChooseTrainItem extends StatelessWidget {
  const ChooseTrainItem({super.key, required this.model});

  final WorkoutModel model;

  @override
  Widget build(BuildContext context) {
    final exNum = nestedListLength(model.exercises);
    return CustomContainer(
        height: 132,
        radius: 20,
        color: Theme.of(context).brightness == Brightness.dark ? kBlack : kBabyBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model.name,
                  style: Styles.textStyleMediumTextMedium,
                ),
                Text(
                  '$exNum Exercises | ${model.time} mins',
                  style: Styles.textStyleSmallTextRegular.copyWith(color: kGrey),
                ),
                const SizedBox(height: 5,),
                CustomButton(
                  onPressed: (){
                    navigateTo(
                        context,
                        WorkoutTrackerView(
                            body: WorkoutDescriptionViewBody(model: model,)
                        ),
                    );
                  },
                  color: Colors.white,
                  isShadow: false,
                  radius: 50,
                  height: 35,
                  width: 95,
                  childWidget: const GradientText(
                      'View more',
                      style: Styles.textStyleCaptionMedium,
                      gradient: kBlueGradient
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 46,
              backgroundColor: kBorderColor,
              child: SvgPicture.asset(model.svg),
            ),
          ],
        )
    );
  }
}
