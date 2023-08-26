import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class RadialProgressBar extends StatefulWidget {
  final double trackWidth;
  final double progressWidth;
  final double progressPercent;
  final Color trackColor;
  final Color progressColor;

  const RadialProgressBar({
    super.key,
    required this.trackWidth,
    required this.progressWidth,
    required this.progressPercent,
    required this.trackColor,
    required this.progressColor,
  });

  @override
  _RadialProgressBarState createState() => _RadialProgressBarState();
}

class _RadialProgressBarState extends State<RadialProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late double _progress;

  @override
  void initState() {
    super.initState();
    _progress = widget.progressPercent;
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animationController.addListener(() {
      setState(() {
        _progress = lerpDouble(
            _progress, widget.progressPercent, _animationController.value)!;
      });
    });
  }

  @override
  void didUpdateWidget(RadialProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    _animationController.forward(from: 0);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: RadialProgressPainter(
        trackWidth: widget.trackWidth,
        progressWidth: widget.progressWidth,
        progressPercent: _progress,
        trackColor: widget.trackColor,
        progressColor: widget.progressColor,
      ),
      child: Container(),
    );
  }
}

class RadialProgressPainter extends CustomPainter {
  final double trackWidth;
  final double progressWidth;
  final double progressPercent;
  final Color trackColor;
  final Color progressColor;

  RadialProgressPainter({
    required this.trackWidth,
    required this.progressWidth,
    required this.progressPercent,
    required this.trackColor,
    required this.progressColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2;
    final trackPaint = Paint()
      ..color = trackColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = trackWidth;
    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = progressWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawCircle(center, radius, trackPaint);
    final progressAngle = 2 * pi * progressPercent;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      progressAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
