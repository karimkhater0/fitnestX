import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class YourScheduleItem extends StatelessWidget {
  const YourScheduleItem({super.key, required this.date, required this.day, required this.isToday});

  final String day, date;
  final bool isToday;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(vertical: 15),
      height: 80,
      width: 60,
      radius: 10,
      gradient: isToday ? kBlueGradient : null,
      color: isToday ? null : kGrey.withOpacity(.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: Styles.textStyleSmallTextRegular.copyWith(color: Colors.white),
          ),
          Text(
            date,
            style: Styles.textStyleMediumTextMedium.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
