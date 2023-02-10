import 'package:flutter/material.dart';
import 'package:practice_2/homepage.dart';
import 'package:practice_2/nextpage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/a': (context) => NextPage(),
      },
    );
  }
}
