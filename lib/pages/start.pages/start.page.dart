import 'package:fiesta/widgets/bezier_clipper_widget/bezzier_clipper_widget.dart';
import 'package:fiesta/widgets/text_widget.dart/heading_text_animation_widget.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return  Scaffold(
      body: Expanded(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              ClipPath(
                clipper: BezzierClipperWidget(),
                child: Container(
                  height: size.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: SweepGradient(
                      colors: [
                        Colors.blue,
                        Colors.red,
                        Colors.blue,
                        Colors.red,
                      ]
                    )
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    HeadingTextAnimationWidget(
                      text: Text(
                        'Fiesta',
                        style: TextStyle(
                          fontFamily: 'AkinaRegular',
                          fontSize: 48,
                          color: Colors.white
                        ),
                      ), 
                      pixels: 40.0, 
                      seconds: 1
                    ),
                    Text(
                      'Tú App para buscar el mejor plan',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ],
                )
              ) 
            ],
          ),
        )
      ),
    );
  }
}