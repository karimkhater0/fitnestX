import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../data/workout_model.dart';
import 'exercise_item.dart';

class SetListView extends StatelessWidget {
  const SetListView({super.key, required this.models, required this.setNum});

  final List<ExerciseModel> models;
  final int setNum;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Set $setNum', style: Styles.textStyleSmallTextMedium,),
        const SizedBox(height: 15,),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 15,),
          itemCount: models.length,
          itemBuilder: (context ,index) =>ExerciseItem(model: models[index],),
        ),
      ],
    );
  }
}
