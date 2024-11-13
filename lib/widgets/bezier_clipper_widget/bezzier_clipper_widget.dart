import 'package:flutter/material.dart';

class BezzierClipperWidget extends CustomClipper<Path> {


  @override
  Path getClip(Size size) {

    final double height = size.height;
    final double width  = size.width;
    
    Path path = Path();
    path.lineTo(0, height * 0.50);
    path.lineTo(width * 0.15, height * 0.65);
    path.quadraticBezierTo(
      width * 0.2, 
      height * 0.4, 
      width * 0.9, 
      height * 0.25
    );
    path.lineTo(width, height * 0.23);
    path.lineTo(width, 0);

    
    path.moveTo(width * 0.75, height);
    path.quadraticBezierTo(
      width * 0.95, 
      height * 0.90, 
      width * 0.80, 
      height * 0.70
    );
    path.lineTo(width, height * 0.75);
    path.lineTo(width, height);
    return path;
    
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    
    return true;

  }
  
}

