import 'package:fitness_app/features/home/data/info_container_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_text.dart';


class UserInfoContainer extends StatelessWidget {
  const UserInfoContainer({super.key, required this.model,});

  final InfoContainerModel model;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.50),
        child: CustomContainer(
          height: 65,
          width: 90,
          radius: 16,
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GradientText(
                  '${model.value}${model.unit}',
                  style: Styles.textStyleMediumTextMedium,
                  gradient: kBlueGradient
              ),
      
              Text(
                model.title,
                style: Styles.textStyleSmallTextRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}