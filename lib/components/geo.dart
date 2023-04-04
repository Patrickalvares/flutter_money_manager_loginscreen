import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuarterCirclePainter extends CustomPainter {
  final Color color;
  final double radius;
  final double startAngle;

  QuarterCirclePainter(
      {required this.color, required this.radius, required this.startAngle});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    Offset center = Offset(0, size.height);

    Path path = Path()
      ..moveTo(center.dx, center.dy)
      ..lineTo(center.dx + radius * cos(startAngle),
          center.dy - radius * sin(startAngle))
      ..arcTo(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        0.5 * 3.14159265,
        false,
      )
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class GeometricShapes extends StatelessWidget {
  const GeometricShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50.0, bottom: 7),
              child: Container(
                width: 50, // Largura do círculo
                height: 50, // Altura do círculo
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(94, 92, 229, 1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            CustomPaint(
                painter: QuarterCirclePainter(
                    color: const Color.fromRGBO(94, 92, 229, 1),
                    radius: 50,
                    startAngle: 0.5 * 3.14159265))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60.0, top: 7),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 50),
                child: CustomPaint(
                  painter: QuarterCirclePainter(
                      color: const Color.fromRGBO(94, 92, 229, 1),
                      radius: 53,
                      startAngle: -0.5 * 3.14159265),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: CustomPaint(
                  painter: QuarterCirclePainter(
                      color: const Color.fromRGBO(94, 92, 229, 1),
                      radius: 53,
                      startAngle: 0.5 * 3.14159265),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
