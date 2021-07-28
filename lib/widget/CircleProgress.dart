import 'package:flutter/cupertino.dart';
import 'package:fyp/AppColors.dart';
import 'dart:math';

class CircleProgress extends CustomPainter {
  double currentProgress;
  CircleProgress({this.currentProgress});
  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCircle = Paint()
      ..strokeWidth = 8
      ..color = colorGrey
      ..style = PaintingStyle.stroke;

    Paint completeArc = Paint()
      ..strokeWidth = 8
      ..color = colorPrimary
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width/2, size.height/2);
    double radius = min(size.width/2,size.height/2) - 8;
    canvas.drawCircle(center, radius, outerCircle); // this draw main outer circle

    double angle = 2 * pi * (currentProgress/100);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi/2, angle, false, completeArc);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
