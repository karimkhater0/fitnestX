import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class WorkoutTitleRow extends StatelessWidget {
  const WorkoutTitleRow({super.key, required this.text, required this.value});

  final String text, value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.textStyleLargeTextSemiBold,
          ),
          Text(
            value,
            style: Styles.textStyleSmallTextMedium.copyWith(
              color: kGrey,
            ),
          ),
        ],
      ),
    );
  }
}
