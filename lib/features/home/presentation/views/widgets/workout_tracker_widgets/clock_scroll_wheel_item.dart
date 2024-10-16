import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class ClockScrollWheelItem extends StatelessWidget {
  const ClockScrollWheelItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Text(
      index.toString(),
      style: Styles.textStyleLargeTextMedium.copyWith(color: kGreyDark),
    );
  }
}
