import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/upcoming_workout_listview.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_title_widget.dart';
import 'package:flutter/material.dart';

import 'choose_train_listview.dart';
import 'custom_gesture_bar.dart';
import 'daily_workout_schedule.dart';

class WorkoutSliverBody extends StatelessWidget {
  const WorkoutSliverBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomGestureBar(),

        const DailyWorkoutSchedule(),

        const WorkoutTitleWidget(text: 'Upcoming Workout'),

        UpcomingWorkoutListView(),

        const WorkoutTitleWidget(
          text: 'What Do You Want to Train',padding: 15,
        ),

        ChooseTrainListView(),

        const SizedBox(height: 10,),

      ],
    );
  }
}
