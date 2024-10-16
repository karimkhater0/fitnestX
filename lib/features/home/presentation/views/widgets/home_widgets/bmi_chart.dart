import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utils/functions/calculate_bmi.dart';
import 'package:fitness_app/core/utils/styles.dart';
import 'package:fitness_app/core/utils/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../manager/cubit/home_cubit.dart';

class BmiChart extends StatelessWidget {
  const BmiChart({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return CustomContainer(
      height: 100,
      width: 100,
      gradient: kPurpleGradient,
      radius: 100,
      child: Center(
        child: Text(
          (calBMI(cubit.model.height, cubit.model.weight)).roundToDouble().toString(),
          style: Styles.textStyleMediumTextSemiBold.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
