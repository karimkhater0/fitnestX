import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/water_progress_bar.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/water_time_line.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_text.dart';


class WaterContainer extends StatelessWidget {
  const WaterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: CustomContainer(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        height: 315,
        radius: 20,
        child: Row(
          children: [
            WaterProgressBar(value: .8,),
            SizedBox(width: 10,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Water Intake',
                  style: Styles.textStyleSmallTextMedium,
                ),
                SizedBox(height: 5,),
                GradientText(
                  '4 Liters',
                  style: Styles.textStyleMediumTextSemiBold,
                  gradient: kBlueGradient,
                ),

                SizedBox(height: 10,),
                Text(
                  'Real time updates',
                  style: Styles.textStyleCaptionRegular,
                ),

                WaterIntakeTimeLine(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

