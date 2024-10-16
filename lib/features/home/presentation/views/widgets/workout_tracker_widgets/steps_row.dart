import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class StepsRow extends StatelessWidget {
  const StepsRow({super.key, required this.steps});

  final int steps;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'How To Do It',
            style: Styles.textStyleLargeTextSemiBold,
          ),
          Text(
            '$steps Steps',
            style: Styles.textStyleSmallTextMedium.copyWith(color: kGrey),
          ),
        ],
      ),
    );
  }
}
