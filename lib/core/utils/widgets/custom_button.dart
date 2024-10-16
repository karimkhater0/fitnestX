import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.childWidget, this.height, this.width,
    this.linearGradient, this.text, required this.onPressed,
    this.textStyle, this.color, this.radius, this.isShadow = true, this.boxShadow,

  });

  final void Function()? onPressed;
  final LinearGradient? linearGradient;
  final String? text;
  final Color? color;
  final Widget? childWidget;
  final double? height;
  final double? width;
  final double? radius;
  final bool isShadow;
  final TextStyle? textStyle;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 99)),
        color: color,
        gradient: linearGradient,
        boxShadow: isShadow
            ? (boxShadow ??  const [kBlueBoxShadow])
            : null,

      ),

      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: childWidget ?? Text(
            text ?? '',
            style: textStyle ?? Styles.textStyleLargeTextBold.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
