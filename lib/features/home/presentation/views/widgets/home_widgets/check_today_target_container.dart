import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class CheckTodayTargetContainer extends StatelessWidget {
  const CheckTodayTargetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: CustomContainer(
        height: 60,
        radius: 16,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Theme.of(context).brightness == Brightness.dark ? kBlack : kBabyBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Today Target',
              style: Styles.textStyleMediumTextMedium,
            ),

            CustomButton(
              linearGradient: kBlueGradient,
              onPressed: (){},
              height: 30,
              width: 68,
              text: 'Check',
              textStyle: Styles.textStyleSmallTextRegular.copyWith(
                  color: Colors.white
              ),

            ),
          ],
        ),
      ),
    );
  }
}
