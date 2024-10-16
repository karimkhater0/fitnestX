import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../data/add_schedule_container_model.dart';
import 'add_schedule_container.dart';

class DetailsWorkoutListView extends StatelessWidget {
  DetailsWorkoutListView({super.key});

  final List<AddScheduleContainerModel> models= [
    AddScheduleContainerModel(
      icon: Icons.fitness_center_outlined,
      title: 'Choose Workout',
      values: [
        'Upperbody Workout',
        'Lowerbody Workout',
        'Fullbody Workout',
        'Ab Workout'
      ],
      onTap: (){},
    ),
    AddScheduleContainerModel(
      icon: IconlyLight.swap,
      title: 'Difficulty',
      values: [
        'Beginner',
        'Intermediate',
        'Advanced',
      ],
      onTap: (){},
    ),
    AddScheduleContainerModel(
      icon: IconlyLight.chart,
      title: 'Custom Repetitions',
    ),
    AddScheduleContainerModel(
      icon: IconlyLight.chart,
      title: 'Custom Weights',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 15,),
      itemCount: models.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10,),
      itemBuilder: (context, index) =>AddScheduleContainer(model: models[index],),
    );
  }
}
