import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class ScrollWheelItem extends StatelessWidget {
  const ScrollWheelItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsData.calories),
              const SizedBox(width: 5,),
              Text(
                '${index * 15} Calories Burn',
                style: Styles.textStyleCaptionRegular,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  index.toString(),
                  style: Styles.textStyleH2Medium.copyWith(color: kGrey),
                ),
              ),

              Text(
                'times',
                style: Styles.textStyleLargeTextRegular.copyWith(color: kGrey),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
