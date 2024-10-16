import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomGradientIndicator extends StatelessWidget {
  const CustomGradientIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Align(
          alignment: Alignment.bottomCenter,
          child: ShaderMask(
              shaderCallback: (Rect rect) {
                return kBlueGradient.createShader(rect);
              },
              child: const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(child: CircularProgressIndicator(color: Colors.white,))
              )
          )
      ),
    );
  }
}
