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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.10),
          child: SizedBox(
            
            width: double.infinity,
            child: Column(
              children: [
                  ClipPath(
                    clipper: BezzierClipperWidget(),
                    child: Container(
                      height: size.height * 0.6,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                  )

                /* HeadingTextAnimationWidget(
                  text: Text(
                    'Fiesta',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       fontFamily: 'AkinaRegular',
                       fontSize: 48
                    ),
                  ), 
                  pixels: 40.0, 
                  seconds: 1
                ),
                Text('Tú App para buscar el mejor plan') */
                
              ],
            ),
          ),
        )
      ),
    );
  }
}