library dashed_color_circle;

import 'package:flutter/material.dart';
import 'dash_painter.dart';

class DashedColorCircle extends StatelessWidget {
  const DashedColorCircle({
    Key? key,
    this.dashes = 3,
    this.emptyColor = Colors.grey,
    this.filledColor = Colors.black,
    this.gapSize = 24.0,
    this.strokeWidth = 8.0,
    this.size = 24.0,
    this.fillCount = 0.0,
    this.strokeCap = StrokeCap.round,
  }) : super(key: key);

  final int dashes;
  final Color emptyColor;
  final Color filledColor;
  final double gapSize;
  final double strokeWidth;
  final double size;
  final double fillCount;
  final StrokeCap strokeCap;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashPainter(
        dashes: dashes,
        emptyColor: emptyColor,
        filledColor: filledColor,
        gapSize: gapSize,
        strokeWidth: strokeWidth,
        fillCount: fillCount,
        strokeCap: strokeCap,
      ),
      child: SizedBox(height: size, width: size),
    );
  }
}
