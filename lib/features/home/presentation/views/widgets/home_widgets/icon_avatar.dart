import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class IconAvatar extends StatelessWidget {
  const IconAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        radius: 50,
        backgroundColor: kBlueLight,
        child: Icon(
          Icons.person,
          size: 50,
          color: kBlueDark,
        ),
      ),
    );
  }
}
