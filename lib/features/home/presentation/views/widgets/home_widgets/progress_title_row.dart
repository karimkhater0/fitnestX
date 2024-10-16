import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';

class ProgressTitleRow extends StatelessWidget {
  const ProgressTitleRow({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.textStyleLargeTextSemiBold,
          ),

          CustomButton(
            width: 85,
            height: 35,
            linearGradient: kBlueGradient,
            childWidget: Row(
              children: [
                Text(
                  'Weekly',
                  style: Styles.textStyleSmallTextRegular.copyWith(
                      color: Colors.white
                  ),
                ),
                const Icon(IconlyLight.arrow_down_2,color: Colors.white,size: 15,),
              ],
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
