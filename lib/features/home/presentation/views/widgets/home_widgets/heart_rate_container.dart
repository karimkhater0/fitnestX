import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_text.dart';
import 'heart_chart.dart';

class HeartRateContainer extends StatelessWidget {
  const HeartRateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Stack(
        children: [
          CustomContainer(
            padding: EdgeInsets.zero,
            color: Theme.of(context).brightness == Brightness.dark ? kBlack : kBabyBlue,
            height: 150,
            radius: 20,
            child: const HeartChart(),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Heart Rate',
                  style: Styles.textStyleSmallTextMedium,
                ),
                SizedBox(height: 5,),
                GradientText(
                  '78 BPM',
                  style: Styles.textStyleMediumTextSemiBold,
                  gradient: kBlueGradient,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
