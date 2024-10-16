import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/step_tracker_body.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/step_tracker_title.dart';
import 'package:flutter/material.dart';

import '../../../../data/workout_model.dart';

class StepTrackerListView extends StatelessWidget {
  const StepTrackerListView({super.key, required this.steps});

  final List<StepModel> steps;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => StepTrackerTitle(
          title: steps[index].title,
          index: '${index + 1}',
        ),
        separatorBuilder: (context, index) => StepTrackerBody(
          body: steps[index].body,
        ),
        itemCount: steps.length);
  }
}
