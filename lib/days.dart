import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Days extends StatelessWidget {
  final days;
  Days(this.days);

  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData.light();
    return Scaffold(
      appBar: AppBar(
        title: Text('No of Days'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 275, horizontal: 143),
          child: CustomPaint(
            size: Size(100.0, 100.0),
            painter: RPSCustomPainter(),
            child: Center(
              child: Text(
                '$days',
                style: TextStyle(fontSize: 45, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 196, 255, 14)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(10.0, 10.0);
    path0.quadraticBezierTo(49.54, -1.24, 90.0, 10.0);
    path0.cubicTo(90.0, 30.0, 90.0, 70.0, 90.0, 90.0);
    path0.quadraticBezierTo(51.22, 100.44, 10.0, 90.0);
    path0.lineTo(10.0, 10.0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
