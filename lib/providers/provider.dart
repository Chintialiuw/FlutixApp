import 'package:flutter/material.dart';

class StatusProvider extends ChangeNotifier {    
  int _currentIndex = 0;  
  int get currentIndex => _currentIndex;

  void updateCurrentIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }
}