import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        backgroundColor: Colors.red[700],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'Show me',
            style: TextStyle(color: Colors.redAccent),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Snack Bar is on~',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.red[400],
                duration: Duration(milliseconds: 1000),
              ),
            );
          },
        ),
      ),
    );
  }
}
