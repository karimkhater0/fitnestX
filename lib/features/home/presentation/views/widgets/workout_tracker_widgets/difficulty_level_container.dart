import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class DifficultyLevelContainer extends StatelessWidget {
  const DifficultyLevelContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      radius: 16,
      color: kPinkLight,
      child: Row(
        children: [
          const Icon(IconlyLight.swap,size: 22,color: kGrey,),
          const SizedBox(width: 10,),
          Expanded(
            child: Text(
              'Difficulty',
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyleSmallTextRegular.copyWith(color: kGrey),
            ),
          ),

          const Text(
            'Beginner',
            style: Styles.textStyleCaptionRegular,
          ),

          const SizedBox(width: 10,),
          InkWell(
            onTap: () {
              // Your onPressed logic here
            },
            child: const Icon(
              IconlyLight.arrow_right_2,
              size: 16,
              color: kGrey,
            ),
          ),

        ],
      ),
    );
  }
}
