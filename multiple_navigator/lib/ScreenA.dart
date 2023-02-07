import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                },
                child: Text('Go to ScreenB'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
                child: Text('Go to ScreenC'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
