import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/add_schedule_view_body.dart';
import 'package:flutter/material.dart';

class AddScheduleView extends StatelessWidget {
  const AddScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: AddScheduleViewBody(),
        ),
      ),

    );
  }
}
