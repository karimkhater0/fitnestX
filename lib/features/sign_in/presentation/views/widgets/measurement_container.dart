import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class MeasurementContainer extends StatelessWidget {
  const MeasurementContainer({super.key, required this.measurementUnit});

  final String measurementUnit;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: const BoxDecoration(
          gradient: kPurpleGradient,
          borderRadius: BorderRadius.all(Radius.circular(14))
      ),
      child: Center(
        child: Text(
          measurementUnit,
          style: Styles.textStyleSmallTextMedium.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
