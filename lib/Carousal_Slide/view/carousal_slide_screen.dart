import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parallax_effect/Carousal_Slide/provider/car_provider.dart';
import 'package:parallax_effect/imglist.dart';
import 'package:provider/provider.dart';

import '../components/slider.dart';

class CarousalSlide extends StatelessWidget {
   CarousalSlide({super.key});




  @override
  Widget build(BuildContext context) {
    final providerTrue = Provider.of<CarProvider>(context);

    return Scaffold(

        body: Container(
          child: Container(
            height: double.infinity,
            decoration:
                BoxDecoration(gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: colorList[providerTrue.currentIndex])),
            child:Column(
              children: [
                SizedBox(height: 90,),
            CarouselSlider(
            items: [
            ...List.generate(
              img.length,
                  (index) => Container(
                width: 300,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          img[index],
                        ),
                        fit: BoxFit.cover)),
              ),
            )
              ],
              options: CarouselOptions(
                onPageChanged: (index, reason) =>
                    Provider.of<CarProvider>(context,listen: false).updateIndex(index),
                height: 550,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              )),
                SizedBox(height: 30,),
                slider_indeicators(providerTrue),
              ],
            )
          ),
        ));
  }


}
