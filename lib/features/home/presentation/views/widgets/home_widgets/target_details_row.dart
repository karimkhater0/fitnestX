import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/target_details_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class TargetDetailsRow extends StatelessWidget {
  const TargetDetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(

      children: [
        TargetDetailsContainer(
          value: '8L',
          svg: AssetsData.waterCup,
          title: 'Water Intake',
        ),
        SizedBox(width: 15,),
        TargetDetailsContainer(
          value: '2400',
          svg: AssetsData.steps,
          title: 'Foot Steps',
        ),

      ],
    );
  }
}
