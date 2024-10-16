import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';

class WorkoutTrackerView extends StatelessWidget {
  const WorkoutTrackerView({super.key, required this.body});


  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueLight,
      body: body,
    );
  }
}
