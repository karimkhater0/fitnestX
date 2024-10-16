import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import 'bmi_chart.dart';
import 'bmi_text_data.dart';

class BmiContainer extends StatelessWidget {
  const BmiContainer({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomContainer(
      padding: EdgeInsets.zero,
      height: 146,
      radius: 20,
      gradient: kBlueGradient,
      child: Stack(
        children: [
          SvgPicture.asset(AssetsData.bmiDots,fit: BoxFit.cover,),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              BmiTextData(),

              BmiChart(),


            ],
          ),
        ],
      ),
    );
  }
}
