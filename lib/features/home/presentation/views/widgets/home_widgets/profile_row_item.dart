import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/gradient_icon.dart';

class ProfileRowItem extends StatelessWidget {
  const ProfileRowItem({super.key, required this.title, required this.icon, this.widget});

  final String title;
  final IconData icon;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget != null
            ? navigateTo(context, widget)
            : null;
      },
      child: Row(
        children: [
          GradientIcon(
            icon: icon,
            gradient: kBlueGradient,
          ),
          const SizedBox(width: 10,),
          Text(
            title,
            style: Styles.textStyleSmallTextRegular.copyWith(color: kGreyDark),
          ),
          const Spacer(),

          const Icon(IconlyLight.arrow_right_2,color: kGreyDark,),
        ],
      ),
    );
  }
}
