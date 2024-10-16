import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_calendar.dart';
import 'package:flutter/material.dart';

class WorkoutScheduleViewBody extends StatelessWidget {
  const WorkoutScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 44,),
        CustomAppBar(title: 'Workout Schedule', backButton: true,),

        SizedBox(height: 30,),
        WorkoutCalendar(),
      ],
    );
  }
}

