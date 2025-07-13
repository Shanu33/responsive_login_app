import 'package:flutter/cupertino.dart';
Size measureTextSize({
  required String text,
  required TextStyle style,
  TextDirection direction = TextDirection.ltr,
  double scale = 1.0,
}) {
  final painter = TextPainter(
    text: TextSpan(text: text, style: style),
    textDirection: direction,
    textScaleFactor: scale,
  )..layout(minWidth: 0, maxWidth: double.infinity);
  return painter.size;
}