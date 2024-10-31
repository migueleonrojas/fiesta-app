import 'dart:ui';

import 'package:flutter/material.dart';

class StarPageBackgroundWidget extends CustomPainter {



  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;

    Path path = Path();

    path.moveTo(size.width * 0.5, size.height * 0.4);
    path.lineTo(2, 90);
    path.lineTo(90, 40);
    /* path.quadraticBezierTo(
      size.width * 0.3,    //x1 
      size.height * 0.3,   //y1
      size.width * 0.7,   //x2 
      size.height * 0.7    //y2
    ); */
    /* path.quadraticBezierTo(size.width * 0.25, size.height * 0.7, size.width * 0.5, size.height * 0.8); */
    /* path.quadraticBezierTo(size.width * 0.75, size.height * 0.9, size.width * 1.0, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height); */

    canvas.drawPath(path, paint);

    
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

