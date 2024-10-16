import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_sliver_body.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/workout_tracker_chart.dart';
import 'package:flutter/material.dart';

import '../../widgets/sliver_body_container.dart';
import '../custom_sliver_appbar.dart';


class WorkoutTrackerViewBody extends StatelessWidget {
  const WorkoutTrackerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      shrinkWrap: true,
      slivers: [
        CustomSliverAppBar(
          text: 'Workout Tracker',
          childWidget: WorkoutTrackerChart(),
          expandedHeight: 300,
        ),

        SliverBodyContainer(
          sliverBody: WorkoutSliverBody(),

        ),
        
      ],
    );
  }
}
