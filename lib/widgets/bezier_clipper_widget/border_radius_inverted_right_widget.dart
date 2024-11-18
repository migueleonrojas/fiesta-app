import 'package:flutter/material.dart';

class BorderRadiusInvertedRightWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double height = size.height;
    final double width  = size.width;

    Path path = Path();
    double radius = size.width * 0.35;
    Offset center = Offset(width, size.height * 0.5);

    path.addArc(
      Rect.fromCircle(center: center, radius: radius),
      3 * 3.14 / 6, 
      3.14,
    );

    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    path.fillType = PathFillType.evenOdd;
    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)
 => false;
}