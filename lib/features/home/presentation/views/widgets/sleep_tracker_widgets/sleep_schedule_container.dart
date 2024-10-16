import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_text.dart';

class SleepScheduleContainer extends StatelessWidget {
  const SleepScheduleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: CustomContainer(
        height: 140,
        radius: 22,
        color: kBabyBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ideal Hours For Sleep',
                  style: Styles.textStyleSmallTextRegular.copyWith(
                    color: Colors.black
                  ),
                ),
                const SizedBox(height: 5,),

                const GradientText(
                    '8hours 30minutes',
                    style: Styles.textStyleSmallTextRegular,
                    gradient: kBlueGradient
                ),

                const Spacer(),

                CustomButton(
                  onPressed: (){},
                  linearGradient: kBlueGradient,
                  text: 'Learn More',
                  textStyle: Styles.textStyleCaptionSemiBold.copyWith(
                      color: Colors.white
                  ),
                  width: 100,
                  height: 40,
                )
              ],
            ),
            SvgPicture.asset(AssetsData.sleepSchedule),

          ],
        ),
      ),
    );
  }
}
