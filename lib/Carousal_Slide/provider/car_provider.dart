import 'package:flutter/cupertino.dart';

class CarProvider extends ChangeNotifier{
  int currentIndex = 0;
  void updateIndex(int index){
    currentIndex = index;
    notifyListeners();
  }
}



