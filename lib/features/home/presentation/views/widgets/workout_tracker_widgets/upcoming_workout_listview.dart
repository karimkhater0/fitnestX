import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/upcoming_workout_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../data/upcoming_workout_model.dart';

class UpcomingWorkoutListView extends StatelessWidget {
  UpcomingWorkoutListView({super.key});

  final List<UpcomingWorkoutModel> list = [
    UpcomingWorkoutModel(svg: AssetsData.fullBody, title: 'FullBody Workout', time: 'Today, 03:00 PM'),
    UpcomingWorkoutModel(svg: AssetsData.upperBody, title: 'UpperBody Workout', time: 'June 05, 02:00 PM'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => UpcomingWorkoutItem(
          svg: list[index].svg,
          title: list[index].title,
          time: list[index].time,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 15,),
        itemCount: list.length,
      ),
    );
  }
}
