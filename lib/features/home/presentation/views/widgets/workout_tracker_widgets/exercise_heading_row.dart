import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/workout_model.dart';

class ExerciseHeadingRow extends StatelessWidget {
  const ExerciseHeadingRow({super.key, required this.model});

  final ExerciseModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name,
                style: Styles.textStyleLargeTextSemiBold,
              ),
              Text(
                'Easy | ${model.exModel.calories} Calories Burn',
                style: Styles.textStyleSmallTextRegular
                    .copyWith(color: kGrey),
              ),
            ],
          ),
          const Spacer(),
          Image(
            image: AssetImage(model.img),
          ),
        ],
      ),
    );
  }
}
