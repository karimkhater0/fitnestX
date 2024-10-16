import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class LastNightSleepContainer extends StatelessWidget {
  const LastNightSleepContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 150,
      radius: 22,
      gradient: kBlueGradient,
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0 ,top: 20),
            child: Text(
              'Last Night Sleep',
              style: Styles.textStyleMediumTextMedium.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20),
            child: Text(
              '8h 20m',
              style: Styles.textStyleMediumTextMedium.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
              child: SvgPicture.asset(
                AssetsData.sleepTracker,width: double.infinity,
              )
          ),
        ],
      ),
    );
  }
}
