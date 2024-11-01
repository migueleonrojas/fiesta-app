import 'package:fiesta/widgets/background_widget.dart/start_page_background_widget.dart';
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
                  CustomPaint(
                     painter: StarPageBackgroundWidget(),
                     child: Container(
                        height: size.height - (size.height * 0.20),
                     )
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