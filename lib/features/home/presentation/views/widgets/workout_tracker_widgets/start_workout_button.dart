import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';

class StartWorkoutButton extends StatelessWidget {
  const StartWorkoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: CustomButton(
        onPressed: (){},
        height: 60,
        text: 'Start Workout',
        linearGradient: kBlueGradient,

      ),
    );
  }
}
