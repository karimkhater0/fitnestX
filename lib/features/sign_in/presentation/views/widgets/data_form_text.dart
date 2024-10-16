import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class DataFormText extends StatelessWidget {
  const DataFormText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        const Text(
          'Let’s complete your profile',
          style: Styles.textStyleH4Bold,
        ),
        Text(
          'It will help us to know more about you!',
          style: Styles.textStyleSmallTextRegular.copyWith(color: kGreyDark),
        ),
        const SizedBox(height: 30,),
      ],
    );
  }
}
