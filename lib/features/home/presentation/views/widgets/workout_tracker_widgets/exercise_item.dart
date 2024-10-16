import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/workout_model.dart';
import '../../exercise_description_view.dart';

class ExerciseItem extends StatelessWidget {
  const ExerciseItem({super.key, required this.model});

  final ExerciseModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage(model.img), height: 60, width: 60,),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name,
                style: Styles.textStyleMediumTextMedium,
              ),
              const SizedBox(height: 5,),
              Text(
                model.time,
                style: Styles.textStyleSmallTextMedium.copyWith(color: kGrey),
              ),
            ],
          ),
        ),

        IconButton(
          onPressed: (){

            navigateTo(context, ExerciseDescriptionView(model: model,));
          },
          icon: const Icon(IconlyLight.arrow_right_circle,color: kGrey,),
        ),


      ],
    );
  }
}
