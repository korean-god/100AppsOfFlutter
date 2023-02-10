import 'package:first_example/ScreenA.dart';
import 'package:first_example/ScreenB.dart';
import 'package:first_example/ScreenC.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Screen_A(),
      '/b': (context) => ScreenB(),
      '/c': (context) => ScreenC(),
    });
  }
}
