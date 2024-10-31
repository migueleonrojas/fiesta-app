import 'package:fiesta/controllers/animation_widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HeadingTextAnimationWidget extends StatelessWidget {
  const HeadingTextAnimationWidget({
    super.key, 
    required this.seconds, 
    required this.pixels,
    required this.text
  });

final int seconds;
final double pixels;
final Text text;



  @override
  Widget build(BuildContext context) {

    AnimationWidgetController  animationWidgetController =  Get.put<AnimationWidgetController>(
      AnimationWidgetController(pixels: pixels, seconds: seconds)
    );

    

    return AnimatedBuilder(
      animation: animationWidgetController.animationController,
      child: text,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(0, animationWidgetController.animation.value),
          child: child,
        );
      },
    );
  }
}