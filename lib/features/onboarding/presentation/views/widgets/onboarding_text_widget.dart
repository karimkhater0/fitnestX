import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class OnboardingTextWidget extends StatelessWidget {
  const OnboardingTextWidget({super.key, required this.title, required this.body});

  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              title,
              style: Styles.textStyleH2Bold,
            ),
          ),

          const SizedBox(height: 15,),

          Text(
            body,
            style: Styles.textStyleMediumTextRegular.copyWith(
              color: kGreyDark,
            ),
          ),
        ],
      ),
    );
  }
}
