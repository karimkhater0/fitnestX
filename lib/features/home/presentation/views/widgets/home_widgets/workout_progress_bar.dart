import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import '../../../../../../constants.dart';


class WorkoutProgressBar extends StatelessWidget {
  const WorkoutProgressBar({super.key, required this.progress});

  final double progress;
  @override
  Widget build(BuildContext context) {
    return FAProgressBar(
      currentValue: progress,
      direction: Axis.horizontal,
      progressGradient: kBlueGradient,
      backgroundColor:kBorderColor,
      size: 10,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      maxValue: 1,
    );
  }
}
