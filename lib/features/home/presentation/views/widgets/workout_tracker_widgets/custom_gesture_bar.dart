import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';

class CustomGestureBar extends StatelessWidget {
  const CustomGestureBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        height: 5,
        width: 50,
        radius: 10,
        color: kGreyLight,
        child: SizedBox()
    );
  }
}
