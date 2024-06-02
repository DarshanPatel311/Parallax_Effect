# media_player

<h2 align='center'>Carousal Slider with Custom Indicator</h2>


* To implement a carousel slider in a Flutter app, you can use the popular carousel_slider package. This package provides a highly customizable slider that allows you to display a sequence of widgets (such as images or other content) in a carousel format.


### 1. Add the Dependency
* First, add the carousel_slider package to your pubspec.yaml file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  carousel_slider: ^4.0.0
```
* Replace ^4.0.0 with the latest version of the package available on pub.dev.

### 2. Install the Package
* Run the following command in your terminal to install the package:
* ```sh
  flutter pub get
  ```

### 3. Import the Package
Import the carousel_slider package in the Dart file where you want to use the carousel:
```dart
import 'package:carousel_slider/carousel_slider.dart';
```

### 4. Create the Carousel Slider
```dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselExample(),
    );
  }
}

class CarouselExample extends StatelessWidget {
  final List<String> imgList = [
    'https://via.placeholder.com/600x400/FF0000/FFFFFF?text=Slide1',
    'https://via.placeholder.com/600x400/00FF00/FFFFFF?text=Slide2',
    'https://via.placeholder.com/600x400/0000FF/FFFFFF?text=Slide3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel Slider Example')),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: imgList.map((item) => Container(
            child: Center(
              child: Image.network(item, fit: BoxFit.cover, width: 1000),
            ),

          )).toList(),

        ),
      ),
    );
  }
}
```
### ScreenShots

<p align='center'>
 
  
   <img src='https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/74979d26-d2fd-412b-9f8d-191a067c0bd0' width=240>
    <img src='https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/9fca9f4a-80a6-46d7-a79a-3648c1863e9d' width=240>
     <img src='https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/3e94db96-223c-48e5-a482-1343d19e2426' width=240>
     <img src='https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/94b87880-2cb0-4343-aff4-437a4aa090f3' width=240>
  
</p>


### Video


https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/fcce82e6-7184-4f99-a783-b276a1b05500

