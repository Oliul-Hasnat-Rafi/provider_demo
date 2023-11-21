import 'package:flutter/material.dart';

class Updatecount extends ChangeNotifier {
  List<int> number = [1, 2, 3, 4, 5, 6, 7, 8];
   double fontsize = 10;
  void addnumber() {
    number.add(number.last + 1);
     notifyListeners();
  }

  void setTextSize(double newSize) {
  fontsize=newSize;
  notifyListeners();
}
}
