import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.height,
    required this.radius, this.color,
    required this.child, this.width, this.padding, this.gradient
  });

  final double height;
  final Widget child;
  final Color? color;
  final double radius;
  final double? width;
  final Gradient? gradient;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      padding: padding ?? const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color ?? kBgColor(context),
        gradient: gradient,
        borderRadius: BorderRadius.all(Radius.circular(radius))
      ),
      child: child,
    );
  }
}
