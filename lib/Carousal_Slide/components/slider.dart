import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parallax_effect/Carousal_Slide/provider/car_provider.dart';

Row slider_indeicators(CarProvider providerTrue) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      7,
          (index) => index == providerTrue.currentIndex
          ? Container(

            height: 13,
            width: 13,
            margin: const EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),


      )
          : Container(
            height: 8,
            width: 8,
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 1.2),

            ),
      ),
    ),
  );
}