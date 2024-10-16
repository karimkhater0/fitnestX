import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../core/utils/widgets/gradient_text.dart';
import 'calories_indicator.dart';

class CaloriesContainer extends StatelessWidget {
  const CaloriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 150,
      radius: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Calories',
            style: Styles.textStyleSmallTextMedium,
          ),
          GradientText(
              '760 kCal',
              style: Styles.textStyleMediumTextSemiBold,
              gradient: kBlueGradient
          ),

          Center(child: CaloriesIndicator()),
        ],
      ),
    );
  }
}
