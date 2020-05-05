import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_learning/constants.dart';
import 'package:provider_state_learning/providers/counter_provider.dart';
import 'package:provider_state_learning/providers/math_provider.dart';
import 'package:provider_state_learning/widgets/answer_widget.dart';
import 'package:provider_state_learning/widgets/math_widgets.dart';

import '../widgets/main_screen_widgets.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<Counter>(context);
    final _mathProvider = Provider.of<MyMathProvider>(context);

    CollectInput1Widget _inputWidgetTest1;
    CollectInput2Widget _inputWidgetTest2;
    AddInputsWidget _addInputsWidget;
    MinusInputsWidget _minusInputsWidget;
    AnswerWidget _answerWidget;

    clearInputs() {
      _counter.clearCounter();
      _mathProvider.clearAnswer();
    }

    return Scaffold(
        appBar: AppBar(
          title: appBarTitle,
          actions: <Widget>[
            IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.windowClose,
                  color: Colors.white,
                ),
                onPressed: () {
                  //print("Would of force closed the app if line below is uncommented.");
                  //SystemNavigator.pop();
                  clearInputs();
                })
          ],
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            // FlatButtonTest(flatbtntestString: "This is a test"),
            IncreaseByOneButtonTest(title: "Increase count by 1"),
            DecreaseByOneButtonTest(title: "Decrease count by 1"),
            IncreaseByXButton(
              title: " (dynamic multiplier)  Increase count by: ",
              multiplier:
                  5, // can be whatever 64bit number you want. stops working after 9,223,372,036,854,775,807
            ),
            ShowCurrentCountWidget(),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _inputWidgetTest1 = CollectInput1Widget(
                    title: "Number1:",
                  ),
                  _addInputsWidget = AddInputsWidget(),
                  _minusInputsWidget = MinusInputsWidget(),
                  _inputWidgetTest2 = CollectInput2Widget(
                    title: "Number2:",
                  ),
                ],
              ),
            ),
            AnswerWidget(),
          ],
        )));
  }
}
