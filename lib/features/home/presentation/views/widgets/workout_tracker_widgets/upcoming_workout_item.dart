import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class UpcomingWorkoutItem extends StatelessWidget {
  const UpcomingWorkoutItem({super.key, required this.svg, required this.title, required this.time});

  final String svg, title, time;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      radius: 20,
      child: Row(
        children: [
          CircleAvatar(
              radius: 25,
              child: SvgPicture.asset(
                svg,
                height: 45,
                width: 45,
              )
          ),
          const SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.textStyleSmallTextMedium,
              ),
              const SizedBox(height: 5,),
              Text(
                time,
                style: Styles.textStyleCaptionRegular,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
