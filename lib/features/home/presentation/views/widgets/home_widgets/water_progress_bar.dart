import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import '../../../../../../constants.dart';

class WaterProgressBar extends StatelessWidget {
  const WaterProgressBar({super.key, required this.value});

  final double value;
  @override
  Widget build(BuildContext context) {
    return FAProgressBar(
      currentValue: value,
      verticalDirection: VerticalDirection.up,
      direction: Axis.vertical,
      progressGradient: kBlueGradient,
      backgroundColor:kBorderColor,
      size: 20,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      maxValue: 1,

    );
  }
}
