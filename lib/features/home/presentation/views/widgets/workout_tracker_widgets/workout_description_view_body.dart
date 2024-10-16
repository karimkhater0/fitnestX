import 'package:fitness_app/features/home/data/workout_model.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/start_workout_button.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_description_appbar.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_description_body.dart';
import 'package:flutter/material.dart';


class WorkoutDescriptionViewBody extends StatelessWidget {
  const WorkoutDescriptionViewBody({super.key, required this.model});

  final WorkoutModel model;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          shrinkWrap: true,
          slivers: [
            WorkoutDescriptionAppBar(
              svg: model.svg,
            ),
            WorkoutDescriptionBody(model: model,),

          ],
        ),

        const StartWorkoutButton(),

      ],
    );
  }
}







