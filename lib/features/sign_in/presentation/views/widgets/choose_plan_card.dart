import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class ChoosePlanCard extends StatelessWidget {
  const ChoosePlanCard({super.key, required this.svg, required this.title, required this.body});

  final String svg;
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: const BoxDecoration(
        gradient: kBlueGradient,
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: SvgPicture.asset(svg)),
            Text(
              title,
              style: Styles.textStyleMediumTextSemiBold.copyWith(color: Colors.white),
            ),
            Container(
              height: 1,
              width: 50,
              color: Colors.white,
            ),
            const SizedBox(height: 20,),
            Text(
              body,
              textAlign: TextAlign.center,
              style: Styles.textStyleSmallTextRegular.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
