import 'package:flutter/material.dart';
import 'package:parallax_effect/Carousal_Slide/provider/car_provider.dart';
import 'package:provider/provider.dart';

import 'Carousal_Slide/view/carousal_slide_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(context) =>  CarProvider()),
  ],child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarousalSlide(),

    );
  }
}


