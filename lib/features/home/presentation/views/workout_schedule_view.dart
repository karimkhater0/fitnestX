import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/add_new_event_button.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_schedule_view_body.dart';
import 'package:flutter/material.dart';

class WorkoutScheduleView extends StatelessWidget {
  const WorkoutScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: WorkoutScheduleViewBody(),
      ),
      
      floatingActionButton: AddNewEventButton(),
    );
  }
}
