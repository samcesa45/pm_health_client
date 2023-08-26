import 'package:flutter/material.dart';

class DashedBorder extends StatelessWidget {
  final Color color;
  final double strokeWidth;
  final double gapSize;
  final double dashSize;
  final Widget child;

  const DashedBorder(
      {super.key,
      this.color = Colors.black,
      this.strokeWidth = 1.0,
      this.dashSize = 5.0,
      this.gapSize = 5.0,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedBorderPainter(
          color: color,
          strokeWidth: strokeWidth,
          gapSize: gapSize,
          dashSize: dashSize,
          child: child),
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gapSize;
  final double dashSize;
  final Widget child;

  _DashedBorderPainter(
      {required this.color,
      required this.strokeWidth,
      required this.gapSize,
      required this.dashSize,
      required this.child});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(0, 0);

    double deltaX = size.width;
    double deltaY = size.height;

    int dashCount = (deltaX / (gapSize + dashSize)).floor();
    double dashSpace = (deltaX - dashCount * dashSize) / (dashCount - 1);

    double x = 0;
    double y = 0;

    for (int i = 0; i < dashCount; i++) {
      path.lineTo(x + dashSize, y);
      x += dashSize + dashSpace;
      path.moveTo(x, y);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_DashedBorderPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.gapSize != gapSize ||
        oldDelegate.child != child ||
        oldDelegate.dashSize != dashSize;
  }
}
