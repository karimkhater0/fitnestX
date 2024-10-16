import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/target_details_row.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import 'add_target_row.dart';

class TodayTargetContainer extends StatelessWidget {
  const TodayTargetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 160,
      radius: 22,
      color: Theme.of(context).brightness == Brightness.dark ? kBlack : kBabyBlue,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddTargetRow(),
          TargetDetailsRow(),
        ],
      ),
    );
  }
}
