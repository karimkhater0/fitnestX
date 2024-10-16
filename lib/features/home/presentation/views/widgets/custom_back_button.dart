import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/widgets/custom_container.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.bgColor, this.padding, this.icon, this.alignment});

  final Color? bgColor;
  final double? padding;
  final IconData? icon;
  final Alignment? alignment;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: padding ?? 0),
        child: CustomContainer(
          padding: EdgeInsets.zero,
          color: bgColor ?? kGreyLight,
          height: 32,
          width: 32,
          radius: 10,
          child: IconButton(
              onPressed: (){Navigator.pop(context);},
              padding: EdgeInsets.zero,
              icon: Icon(icon ??Icons.arrow_back_ios_new_rounded,size: 18,)
          ),

        ),
      ),
    );
  }
}
