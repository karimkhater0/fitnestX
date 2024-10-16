import 'package:flutter/material.dart';
import 'dart:ui' as ui;

double calculateTextHeight({
  required String text,
  required double maxWidth,
  required TextStyle textStyle,
})
{
  // Create a TextSpan with the given font size and other properties
  final TextSpan textSpan = TextSpan(
    text: text,
    style: textStyle,
  );

  // Create a TextPainter to calculate the height
  final TextPainter textPainter = TextPainter(
    text: textSpan,
    textDirection: ui.TextDirection.ltr,
    maxLines: null,  // This allows unlimited lines
  );

  // Layout the text within the constraints
  textPainter.layout(
    minWidth: 0,
    maxWidth: maxWidth,  // Set the max width constraint
  );

  // Return the computed height
  return textPainter.size.height;
}
