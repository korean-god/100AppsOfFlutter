import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int counter = 0;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('stl Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$counter'),
              ElevatedButton(
                onPressed: () {
                  counter++;
                },
                child: const Text('Increase counter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 
///
///