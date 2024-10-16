import 'package:flutter/material.dart';

class ActiveIconDotWidget extends StatelessWidget {
  const ActiveIconDotWidget({super.key, required this.gradient});

  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 5,
      width: 5,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
