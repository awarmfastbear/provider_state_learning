import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_learning/providers/input_provider.dart';
import 'package:provider_state_learning/providers/math_provider.dart';
import 'package:provider_state_learning/screens/main_screen.dart';

import 'providers/counter_provider.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Counter(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => InputProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => MyMathProvider(),
        ),
      ],
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
