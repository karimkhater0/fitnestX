import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Or',
            style: Styles.textStyleSmallTextRegular,
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
