import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationWidgetController extends GetxController with GetSingleTickerProviderStateMixin {

   int _seconds = 0;
   double _pixels = 0;
   late AnimationController animationController;
   late Animation animation;


   AnimationWidgetController({
      required int seconds, 
      required double pixels
   }) {
      _seconds = seconds;
      _pixels = pixels;
   }

  
  
   @override
   void onInit() {

      super.onInit();

      animationController = AnimationController(
         vsync: this,
         duration: Duration(seconds: _seconds),
      );

      animation = Tween<double>(begin: -_pixels, end: 0).animate(animationController);

      animationController.forward(from: 0);
   }

}