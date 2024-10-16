import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_text.dart';


class TargetDetailsContainer extends StatelessWidget {
  const TargetDetailsContainer({super.key, required this.svg, required this.title, required this.value});

  final String svg, title, value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomContainer(
        height: 80,
        radius: 12,
        color: kBorderColor,
        child: Row(
          children: [
            SvgPicture.asset(svg),
            const SizedBox(width: 5,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    value,
                    gradient: kBlueGradient,
                    style: Styles.textStyleMediumTextMedium,
                  ),
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Styles.textStyleCaptionRegular.copyWith(color: kGreyDark),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
