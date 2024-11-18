import 'package:fiesta/widgets/bezier_clipper_widget/bezzier_clipper_widget.dart';
import 'package:fiesta/widgets/bezier_clipper_widget/border_radius_inverted_left_widget.dart';
import 'package:fiesta/widgets/bezier_clipper_widget/border_radius_inverted_right_widget.dart';
import 'package:fiesta/widgets/text_widget.dart/heading_text_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/start_page_controller.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {

    StartPageController startPageController =  Get.put<StartPageController>(StartPageController());

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
              Positioned(
                top: size.height * 0.1,
                left: 0,
                right: 0,
                child: const Column(
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
              ),
              Positioned(
                top: size.height * 0.35,
                right: size.width * 0.0225,
                child: Text(
                  'Inicio de Sesion',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: size.height * 0.035
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.45,
                left: 0,
                right: 0,
                child: Form(
                  key: startPageController.startPageformKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.15,
                        width: size.width * 0.9,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Correo',
                            hintStyle: const TextStyle(
                              color: Color(0x73000000)
                            ),
                            filled: true,
                            fillColor: const Color(0xFFFFFFFF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.height * 0.04)),
                              borderSide: BorderSide.none,
                            ),
                            
                            suffixIcon: ClipPath(
                              
                              clipper: BorderRadiusInvertedLeftWidget(),
                              child: Container(
                                
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.red
                                    ]
                                  ),
                                
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(size.width * 0.2),
                                    bottomRight: Radius.circular(size.width * 0.2)
                                  )
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: size.width * 0.05),
                                  child: const Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  )
                                ),
                              ),
                            ),
                           
                            suffixIconConstraints: BoxConstraints(
                              minHeight: size.height * 0.080, 
                              maxHeight: size.height * 0.085,
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.15,
                        width: size.width * 0.9,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Contraseña',
                            hintStyle: const TextStyle(
                              color: Color(0x73000000)
                            ),
                            filled: true,
                            fillColor: const Color(0xFFFFFFFF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(size.height * 0.04)),
                              borderSide: BorderSide.none,
                            ),
                            
                            prefixIcon: ClipPath(
                              
                              clipper: BorderRadiusInvertedRightWidget(),
                              child: Container(
                                
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.red
                                    ]
                                  ),
                                
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(size.width * 0.2),
                                    bottomLeft: Radius.circular(size.width * 0.2)
                                  )
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(right: size.width * 0.05),
                                  child: const Icon(
                                    Icons.key,
                                    color: Colors.white,
                                  )
                                ),
                              ),
                            ),
                           
                            prefixIconConstraints: BoxConstraints(
                              minHeight: size.height * 0.080, 
                              maxHeight: size.height * 0.085,
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ),
              Positioned(
                top: size.height * 0.7,
                left: 0,
                right: 0,
                child: RichText(
                  textAlign:TextAlign.center,
                  text: TextSpan(
                    text: '¿Se te olvido la ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'contraseña', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2.0
                        
                      )),
                      TextSpan(text: '?', style: TextStyle())
                    ],
                  ),
                )
              )
            ],
          ),
        )
      ),
    );
  }
}