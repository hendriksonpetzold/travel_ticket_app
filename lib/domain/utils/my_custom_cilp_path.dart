import 'package:flutter/cupertino.dart';

class MyCustomCilpPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.0408333, size.height * 0.2085714);
    path.quadraticBezierTo(size.width * 0.0425000, size.height * 0.0739286,
        size.width * 0.1241667, size.height * 0.0728571);
    path.cubicTo(
      size.width * 0.3120833,
      size.height * 0.0721429,
      size.width * 0.6879167,
      size.height * 0.0707143,
      size.width * 0.8758333,
      size.height * 0.0700000,
    );
    path.quadraticBezierTo(size.width * 0.9579167, size.height * 0.0725000,
        size.width * 0.9575000, size.height * 0.2114286);
    path.lineTo(size.width * 0.9583333, size.height * 0.5742857);
    path.quadraticBezierTo(size.width * 0.8958333, size.height * 0.6289286,
        size.width * 0.8750000, size.height * 0.6471429);
    path.quadraticBezierTo(size.width * 0.8956250, size.height * 0.6653571,
        size.width * 0.9575000, size.height * 0.7200000);
    path.quadraticBezierTo(size.width * 0.9581250, size.height * 0.8260714,
        size.width * 0.9583333, size.height * 0.8614286);
    path.quadraticBezierTo(size.width * 0.9587500, size.height * 0.9257143,
        size.width * 0.9166667, size.height * 0.9300000);
    path.lineTo(size.width * 0.0833333, size.height * 0.9285714);
    path.quadraticBezierTo(size.width * 0.0397917, size.height * 0.9264286,
        size.width * 0.0391667, size.height * 0.8571429);
    path.quadraticBezierTo(size.width * 0.0387500, size.height * 0.8217857,
        size.width * 0.0391667, size.height * 0.7157143);
    path.lineTo(size.width * 0.1250000, size.height * 0.6442857);
    path.lineTo(size.width * 0.0416667, size.height * 0.5728571);
    path.lineTo(size.width * 0.0408333, size.height * 0.2085714);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
