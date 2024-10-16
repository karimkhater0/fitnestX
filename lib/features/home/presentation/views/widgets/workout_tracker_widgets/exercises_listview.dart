import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/set_listview.dart';
import 'package:flutter/material.dart';

import '../../../../data/workout_model.dart';

class ExercisesListView extends StatelessWidget {
  const ExercisesListView({super.key, required this.sets});

  final List<List<ExerciseModel>> sets;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sets.length,
      separatorBuilder: (context, index) => const SizedBox(height: 20,),
      itemBuilder: (context, index) => SetListView(
        models: sets[index],
        setNum: index + 1,
      ),
    );
  }
}
