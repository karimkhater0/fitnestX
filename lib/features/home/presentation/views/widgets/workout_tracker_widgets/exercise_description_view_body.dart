import 'package:fitness_app/core/utils/styles.dart';
import 'package:fitness_app/core/utils/widgets/custom_button.dart';
import 'package:fitness_app/features/home/data/workout_model.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/custom_back_button.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/scroll_wheel_listview.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/step_tracker_listview.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/steps_row.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_title_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import 'exercise_heading_row.dart';

class ExerciseDescriptionViewBody extends StatelessWidget {
  const ExerciseDescriptionViewBody({super.key, required this.model});

  final ExerciseModel model;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 30,),
          CustomBackButton(icon: Icons.close_rounded,bgColor: kBgColor(context),),

          ///Heading
          ExerciseHeadingRow(model: model,),

          ///Description
          const WorkoutTitleWidget(
            text: 'Description',
            padding: 15,
          ),
          Text(
            model.exModel.description,
            style: Styles.textStyleSmallTextRegular.copyWith(color: kGreyDark),
          ),

          StepsRow(steps: model.exModel.steps.length),

          StepTrackerListView(steps: model.exModel.steps,),
          Padding(
            padding: const EdgeInsets.fromLTRB(62, 5, 30, 30),
            child: Text(
              model.exModel.steps.last.body,
              style: Styles.textStyleSmallTextRegular.copyWith(color: kGrey),
            ),
          ),


          const CaloriesScrollWheelListView(),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: CustomButton(
              onPressed: (){},
              height: 60,
              text: 'Save',
              linearGradient: kBlueGradient,

            ),
          ),

        ],
      ),
    );
  }
}

