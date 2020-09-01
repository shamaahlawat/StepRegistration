import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        // color: Colors.blue,
        height: 220,
        width: MediaQuery.of(context).size.width,
      ),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    path.lineTo(0, size.height * 0.97);

    path.moveTo(0, size.height);
    path.quadraticBezierTo(
        30.1, size.height / 1.7, size.width, size.height + 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    paint.color = Colors.blueAccent;
    canvas.drawPath(path, paint);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
