import 'package:flutter/cupertino.dart';

class MyMathProvider extends ChangeNotifier {
  String _answer = '';
  String get answer => _answer;

  clearAnswer() {
    _answer = '';
  }

  void addInputs(input1, input2) {
    print("addInputs called!");
    _answer = (int.parse(input1) + int.parse(input2)).toString();

    notifyListeners();
  }

  void minusInputs(input1, input2) {
    print("addInputs called!");
    _answer = (int.parse(input1) - int.parse(input2)).toString();

    // _answer = tmp_answer.toString();
    notifyListeners();
  }
}
