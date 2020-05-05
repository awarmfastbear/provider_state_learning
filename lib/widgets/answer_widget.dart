import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_learning/providers/counter_provider.dart';
import 'package:provider_state_learning/providers/math_provider.dart';

class AnswerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mathProvider = Provider.of<MyMathProvider>(context);
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Text(
            "The answer is:",
            style: TextStyle(fontSize: 23),
          ),
          Divider(
            height: 5,
          ),
          Consumer<Counter>(
            builder: (context, count, __) {
              return Text(
                mathProvider.answer,
                style: TextStyle(fontSize: 20),
              );
            },
          ),
        ],
      ),
    );
  }
}

// getAnswer() {
//   return '1';
// }
