import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';
import '../custom_sliver_appbar.dart';

class WorkoutDescriptionAppBar extends StatelessWidget {
  const WorkoutDescriptionAppBar({super.key, required this.svg});

  final String svg;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return CustomSliverAppBar(
      expandedHeight: 350,
      childWidget: Stack(
        children: [
          Positioned(
            bottom: -64,
            left: width / 2 - 145,
            child: CircleAvatar(
              radius: 145,
              backgroundColor: kBabyBlue.withOpacity(.3),
              child: SvgPicture.asset(svg,height: 300,),
            ),
          ),
        ],
      ),
    );
  }
}
