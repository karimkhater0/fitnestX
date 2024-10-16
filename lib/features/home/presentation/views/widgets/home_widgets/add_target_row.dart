import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';



class AddTargetRow extends StatelessWidget {
  const AddTargetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Today Target',
          style: Styles.textStyleMediumTextSemiBold,
        ),
        CustomContainer(
            padding: EdgeInsets.zero,
            height: 24,
            width: 24,
            radius: 8,
            gradient: kBlueGradient,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: (){},
              icon: const Icon(
                Icons.add_rounded,
                color: Colors.white,
                size: 15,
              ),
            )
        ),

      ],
    );
  }
}
