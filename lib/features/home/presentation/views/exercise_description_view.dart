import 'package:fitness_app/features/home/data/workout_model.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/exercise_description_view_body.dart';
import 'package:flutter/material.dart';

class ExerciseDescriptionView extends StatelessWidget {
  const ExerciseDescriptionView({super.key, required this.model});

  final ExerciseModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ExerciseDescriptionViewBody(model: model),
        ),
      ),
    );
  }
}
