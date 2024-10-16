import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomLoginContainer extends StatelessWidget {
  const CustomLoginContainer({super.key, required this.pic, this.onTap});

  final String pic;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(color: kGreyLight,),
          borderRadius: const BorderRadius.all(Radius.circular(14)),
        ),
        child: Center(child: Image(image: AssetImage(pic),width: 20,height: 20,))
      ),
    );
  }
}
