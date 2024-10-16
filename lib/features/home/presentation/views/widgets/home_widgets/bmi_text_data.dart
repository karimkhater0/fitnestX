import 'package:fitness_app/core/utils/functions/calculate_bmi.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../manager/cubit/home_cubit.dart';


class BmiTextData extends StatelessWidget {
  const BmiTextData({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'BMI (Body Mass Index)',
          style: Styles.textStyleMediumTextSemiBold.copyWith(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          getBMICategory(calBMI(cubit.model.height, cubit.model.weight)),
          style: Styles.textStyleSmallTextRegular.copyWith(
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 15,),

        CustomButton(
          linearGradient: kPurpleGradient,
          onPressed: (){},
          textStyle: Styles.textStyleCaptionSemiBold.copyWith(color: Colors.white),
          text: 'View More',
          width: 95,
          height: 35,
        ),
      ],
    );
  }
}
