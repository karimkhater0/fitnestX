import 'package:fitness_app/features/home/data/workout_data.dart';
import 'package:fitness_app/features/home/data/workout_model.dart';
import 'package:flutter/material.dart';

import 'choose_train_item.dart';

class ChooseTrainListView extends StatelessWidget {
  ChooseTrainListView({super.key});

  final List<WorkoutModel> models = [
    WorkoutData.fullBody,
    WorkoutData.lowerBody,
    WorkoutData.ab,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ChooseTrainItem(model: models[index],),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: models.length,
    );
  }
}
