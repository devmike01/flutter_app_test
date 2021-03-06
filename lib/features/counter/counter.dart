import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    if (counter < 1) return;
    counter--;
    notifyListeners();
  }
}
