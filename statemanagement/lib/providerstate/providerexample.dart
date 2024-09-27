import 'package:flutter/material.dart';

class Providerexample extends ChangeNotifier {
  int count = 0;
  increment(val) {
    count = val + 1;
    notifyListeners();
  }

  decrement(val) {
    count = val - 1;
    notifyListeners();
  }
}
