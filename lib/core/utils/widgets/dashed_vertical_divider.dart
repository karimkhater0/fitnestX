import 'package:flutter/material.dart';

class DashedVerticalDivider extends StatelessWidget {
  final double dashHeight;
  final double dashWidth;
  final Color color;
  final double gap;

  const DashedVerticalDivider({
    super.key,
    this.dashHeight = 5,
    this.dashWidth = 1,
    this.color = Colors.grey,
    this.gap = 3,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // The height will depend on the parent's available height
        final boxHeight = constraints.maxHeight;
        final dashCount = (boxHeight / (dashHeight + gap)).floor();
        return Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              height: dashHeight,
              width: dashWidth,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}

