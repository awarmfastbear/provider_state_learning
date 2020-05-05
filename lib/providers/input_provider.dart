import 'package:flutter/material.dart';

class InputProvider extends ChangeNotifier {
  String _input1;
  String _input2;

  String get input1 => _input1;
  String get input2 => _input2;

  void setInput1(String input) {
    _input1 = input;
    // notifyListeners();
  }

  void setInput2(String input) {
    _input2 = input;
    // notifyListeners();
  }

  // get _input1 => input1;
  // get _input2 => input2;
  // set _input1(input) => input1;
  // set _input2(input) => input2;
  // // Set up notifiers for the inputs. Widgets that want the input data will consume these.
  // getInput1([String input]) {
  //   notifyListeners();
  // }

  // getInput2([String input]) {
  //   this._input2.toString();
  //   notifyListeners();
  //   // var input;
  //   // notifyListeners();
  // }
}
