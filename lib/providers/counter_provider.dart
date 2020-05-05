import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {  
  int count = 0;

 void increaseCount(multiplier) {
    count += multiplier;
    print("Increased count");
    print("count: " + count.toString());
    notifyListeners();
  }

   void decreaseCount(multiplier) {
    count -= multiplier;
    print("Decreased count");
    print("count: " + count.toString());
    notifyListeners();
  }
  
  getCount() => count;

  void clearCounter() {
    count = 0;
    notifyListeners();
  }

}