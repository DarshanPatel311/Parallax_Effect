import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parallax_effect/imglist.dart';

class CarousalSlide extends StatelessWidget {
  const CarousalSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          decoration:
              BoxDecoration(gradient: LinearGradient(colors: colorList[0])),
          child: CarouselSlider(
              items: [
                ...List.generate(
                  img.length,
                  (index) => Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
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
        ));
  }
}
