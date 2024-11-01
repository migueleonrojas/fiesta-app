
import 'package:fiesta/pages/start.pages/start.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FiestaApp extends StatelessWidget {
  const FiestaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fiesta App',
      home: StartPage()
    );
  }
}