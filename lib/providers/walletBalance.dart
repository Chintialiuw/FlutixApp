import 'package:flutter/material.dart';

class WalletBalance extends ChangeNotifier {
  int _balance = 0;

  int get balance => _balance;

  set balance(int value) {
    _balance = value;
    notifyListeners();
  }

  void deductBalance(int amount) {
    if (_balance >= amount) {
      _balance -= amount;
      notifyListeners();
    }
  }

  void addBalance(int amount) {
    _balance += amount;
    notifyListeners();
  }
}