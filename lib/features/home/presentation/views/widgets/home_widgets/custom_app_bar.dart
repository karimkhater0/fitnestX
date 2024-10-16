import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.backButton = false,
    this.icon = IconlyLight.arrow_left_2,
    this.size = 16,
    this.color,
    this.textColor,
    this.actionButton = true,
  });

  final String title;
  final bool backButton;
  final bool actionButton;
  final IconData icon;
  final double size;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        backButton
        ? InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: CustomContainer(
            padding: EdgeInsets.zero,
            height: 35,
            width: 35,
            radius: 8,
            color: color,
            child: Icon(icon, size: size),
          ),
        )
        : const SizedBox(width: 35,),
        Text(
          title,
          style: Styles.textStyleLargeTextBold.copyWith(
            color: textColor,
          ),
        ),
        actionButton
        ? CustomContainer(
          padding: EdgeInsets.zero,
          height: 35,
          width: 35,
          radius: 8,
          color: color,
          child: Center(
            child: Icon(IconlyLight.more_circle, size: size,),
          ),
        )
        : const SizedBox(width: 35,),
      ],
    );
  }
}
