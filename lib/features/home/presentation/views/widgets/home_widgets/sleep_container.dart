import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/features/home/presentation/views/sleep_tracker_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_text.dart';


class SleepContainer extends StatelessWidget {
  const SleepContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, const SleepTrackerView());
      },
      child: CustomContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 150,
        radius: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sleep',
              style: Styles.textStyleMediumTextMedium,
            ),
            const GradientText(
                '8h 20m',
                style: Styles.textStyleMediumTextSemiBold,
                gradient: kBlueGradient
            ),
            Center(child: SvgPicture.asset(AssetsData.sleep,fit: BoxFit.scaleDown,)),
          ],
        ),
      ),
    );
  }
}
