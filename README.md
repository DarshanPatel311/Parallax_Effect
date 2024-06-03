# Parallax_Effect

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


<h2 align = "center"> 1. Video Player </h2>


The `video_player` package in Flutter is a powerful library that enables you to embed video playback functionality in your Flutter applications. It supports various video formats and provides extensive features to control video playback. Here’s a detailed description of the `video_player` package and how to use it.

### Overview

The `video_player` package allows you to:

- Load videos from network sources, assets, or file systems.
- Control video playback (play, pause, seek, etc.).
- Monitor video playback events such as buffering, completion, and errors.
- Access video metadata like duration, position, size, and aspect ratio.

### Installation

To use the `video_player` package, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  video_player: ^2.2.15
```

Then, run `flutter pub get` to install the package.

### Basic Usage

Here’s a step-by-step guide to implement a basic video player in a Flutter app using the `video_player` package.

#### Step 1: Import the Package

First, import the `video_player` package in your Dart file:

```dart
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
```

#### Step 2: Initialize the Video Player

Create a `StatefulWidget` to manage the video player’s state and lifecycle:

```dart
class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://www.example.com/video.mp4', // Replace with your video URL
    )
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player Example'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
```

#### Step 3: Main Application Entry Point

In your `main.dart`, use the `VideoPlayerScreen` widget:

```dart
import 'package:flutter/material.dart';
import 'video_player_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Video Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VideoPlayerScreen(),
    );
  }
}
```

### Features and Capabilities

The `video_player` package offers a range of features to enhance video playback:

- **Initialization**: Initialize the video player with a network URL, asset, or file.
- **Controls**: Play, pause, seek to a position, and set loop mode.
- **Events**: Listen to events such as video completion, errors, and buffering updates.
- **Playback Speed**: Adjust the playback speed of the video.
- **Volume Control**: Adjust the volume of the video.
- **Fullscreen Support**: Implement fullscreen video playback.

### Example of Additional Features

Here’s an example of how to implement additional features such as seeking and displaying playback progress:

```dart
class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://www.example.com/video.mp4', // Replace with your video URL
    )
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player Example'),
      ),
      body: Column(
        children: [
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : CircularProgressIndicator(),
          VideoProgressIndicator(_controller, allowScrubbing: true),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.replay_10),
                onPressed: () {
                  _controller.seekTo(
                    _controller.value.position - Duration(seconds: 10),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.forward_10),
                onPressed: () {
                  _controller.seekTo(
                    _controller.value.position + Duration(seconds: 10),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
```

This example includes controls for playing, pausing, and seeking the video, as well as displaying a progress indicator.

### Conclusion

The `video_player` package in Flutter provides comprehensive support for video playback, allowing you to create rich multimedia experiences in your apps. With its flexibility and ease of use, you can integrate video functionality tailored to your application's needs.


<img src = "https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/13e922f4-2c60-431a-a708-b15d04dc008f" width=22% height=35%>
<img src = "https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/46b2c88e-7a94-4cfc-b3c0-45f1f5e9ec10" width=22% height=35%>
<img src = "(https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/0fafc17d-23f5-4b60-9555-e4c22f719f91" width=22% height=35%>



https://github.com/DarshanPatel311/Parallax_Effect/assets/143177575/d2292d20-6071-46de-b9b6-257228340551




