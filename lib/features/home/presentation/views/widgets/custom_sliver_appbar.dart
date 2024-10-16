import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_back_button.dart';


class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key, required this.childWidget,
    this.text, this.expandedHeight
  });

  final Widget childWidget;
  final String? text;
  final double? expandedHeight;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: expandedHeight ?? 350,
      backgroundColor: kBlueLight,
      title:  Text(text ?? '',),
      titleTextStyle: Styles.textStyleLargeTextSemiBold.copyWith(
          color: Colors.white
      ),
      centerTitle: true,
      leadingWidth: 65,

      leading: CustomBackButton(bgColor: kBgColor(context),padding: 30,),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: childWidget,
      ),


    );
  }
}

