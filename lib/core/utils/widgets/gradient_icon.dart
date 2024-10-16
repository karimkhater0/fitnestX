import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final Gradient gradient;
  final void Function()? onPressed;

  const GradientIcon({
    super.key,
    required this.icon,
    required this.gradient,
    this.onPressed,

  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 30,
          color: Colors.white, // Set a base color
        ),
      ),
    );
  }
}
