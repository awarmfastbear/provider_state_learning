import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_learning/providers/counter_provider.dart';
import 'package:provider_state_learning/providers/input_provider.dart';
import 'package:provider_state_learning/providers/math_provider.dart';

class FlatButtonTest extends StatelessWidget {
  String flatbtntestString = "Flat Button";

  FlatButtonTest({this.flatbtntestString});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      child: FlatButton(
        color: Colors.grey,
        onPressed: () {
          print("Do something");
        },
        child: Text(flatbtntestString ?? 'default value'),
      ),
    );
  }
}

class DecreaseByOneButtonTest extends StatelessWidget {
  String title = "Decrease By 1";

  DecreaseByOneButtonTest({this.title});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return RaisedButton(
      child: Text(title),
      onPressed: () {
        counter.decreaseCount(1);
      },
    );
  }
}

class IncreaseByOneButtonTest extends StatelessWidget {
  String title = "Increase By 1";

  IncreaseByOneButtonTest({this.title});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return RaisedButton(
      child: Text(title),
      onPressed: () {
        counter.increaseCount(1);
      },
    );
  }
}

class IncreaseByXButton extends StatelessWidget {
  String title = "Increase By 1";
  int multiplier = null;

  IncreaseByXButton({this.title, this.multiplier = 1});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return RaisedButton(
      child: Text(title + multiplier.toString()),
      onPressed: () {
        counter.increaseCount(multiplier);
      },
    );
  }
}

class ShowCurrentCountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final count = Provider.of<Counter>(context);

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Text(
            "The current count:",
            style: TextStyle(fontSize: 23),
          ),
          Divider(
            height: 5,
          ),
          Consumer<Counter>(
            builder: (context, count, __) {
              return Text(
                count.getCount().toString(),
                style: TextStyle(fontSize: 20),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CollectInput1Widget extends StatelessWidget {
  String title = "Input: ";
  var inputProviderName;

  CollectInput1Widget({this.title});

  @override
  Widget build(BuildContext context) {
    final inputProvider = Provider.of<InputProvider>(context);
    TextEditingController _controller1 = new TextEditingController();

    return Container(
      width: 70,
      height: 70,
      color: Colors.amber,
      child: TextField(
          decoration: InputDecoration(
            helperText: title,
            helperStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          textAlign: TextAlign.center,
          controller: _controller1,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [BlacklistingTextInputFormatter(new RegExp('[ -,]'))],
          onChanged: (input) {
            inputProvider.setInput1(input);
          }),
    );
  }
}

class CollectInput2Widget extends StatelessWidget {
  String title = "Input: ";
  var inputProviderName;

  CollectInput2Widget({this.title});

  @override
  Widget build(BuildContext context) {
    final inputProvider = Provider.of<InputProvider>(context);
    TextEditingController _controller1 = new TextEditingController();

    return Container(
      width: 70,
      height: 70,
      color: Colors.amber,
      child: TextField(
        decoration: InputDecoration(
          helperText: title,
          helperStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        textAlign: TextAlign.center,
        controller: _controller1,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [BlacklistingTextInputFormatter(new RegExp('[ -,]'))],
        onChanged: (input) {
          //print("Input:" + input);
          inputProvider.setInput2(input);
        },
      ),
    );
  }
}
