import 'package:flutter/material.dart';
import 'package:multiple_navigator/ScreenA.dart';
import 'package:multiple_navigator/ScreenB.dart';
import 'package:multiple_navigator/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}
