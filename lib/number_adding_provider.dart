import 'package:flutter/material.dart';

class NumberAddingProvider extends ChangeNotifier {
  List<int> numbers = [1, 2];
  void add() {
    int last = numbers.last;
    numbers.add(last + 1);
    notifyListeners();
  }
}
