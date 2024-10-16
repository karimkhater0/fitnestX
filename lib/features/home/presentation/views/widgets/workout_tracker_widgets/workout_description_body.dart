import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/schedule_workout_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_title_row.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/functions/nested_list_length.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/workout_model.dart';
import '../sliver_body_container.dart';
import 'custom_gesture_bar.dart';
import 'difficulty_level_container.dart';
import 'exercises_listview.dart';
import 'item_card_listview.dart';

class WorkoutDescriptionBody extends StatelessWidget {
  const WorkoutDescriptionBody({super.key, required this.model});

  final WorkoutModel model;
  @override
  Widget build(BuildContext context) {
    final exNum = nestedListLength(model.exercises);
    return SliverBodyContainer(
      sliverBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: CustomGestureBar()),
          const SizedBox(height: 25,),
          Text(
            model.name,
            style: Styles.textStyleLargeTextBold,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 20),
            child: Text(
              '$exNum Exercises | ${model.time}mins | ${model.calories} Calories Burn',
              style: Styles.textStyleSmallTextRegular.copyWith(color: kGrey),
            ),
          ),

          const ScheduleWorkoutContainer(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: DifficultyLevelContainer(),
          ),
          WorkoutTitleRow(
            text: 'You\'ll Need',
            value: '${model.items.length} Items',
          ),
          ItemCardListView(items: model.items,),

          const SizedBox(height: 15,),
          WorkoutTitleRow(
            text: 'Exercises',
            value: '${model.exercises.length} Sets',
          ),

          ExercisesListView(sets: model.exercises,),
          const SizedBox(height: 100,),

        ],
      ),
    );
  }
}
