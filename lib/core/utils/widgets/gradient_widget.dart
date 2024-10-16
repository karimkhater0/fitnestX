import 'package:flutter/cupertino.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({super.key, required this.gradient, required this.child, required this.width});


  final Gradient gradient;
  final Widget child;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (Rect bounds) {
      return gradient.createShader(bounds);
    },
      child: SizedBox(
        width: width,
        child: child,
      ),
    );
  }
}
