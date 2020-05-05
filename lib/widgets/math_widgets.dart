import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_learning/providers/input_provider.dart';
import 'package:provider_state_learning/providers/math_provider.dart';

class AddInputsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inputProvider = Provider.of<InputProvider>(context);
    final mathProvider = Provider.of<MyMathProvider>(context);

    return IconButton(
      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
      icon: FaIcon(FontAwesomeIcons.plus),
      iconSize: 40,
      onPressed: () {
        mathProvider.addInputs(inputProvider.input1, inputProvider.input2);

        print("answer: " + mathProvider.answer.toString());
      },
    );
  }
}

class MinusInputsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inputProvider = Provider.of<InputProvider>(context);
    final mathProvider = Provider.of<MyMathProvider>(context);

    return IconButton(
      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
      icon: FaIcon(FontAwesomeIcons.minus),
      iconSize: 40,
      onPressed: () {
        mathProvider.minusInputs(inputProvider.input1, inputProvider.input2);

        print("answer: " + mathProvider.answer.toString());
      },
    );
  }
}
