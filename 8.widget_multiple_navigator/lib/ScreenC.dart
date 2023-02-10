import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen C'),
      ),
      body: Center(
        child: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text('Go to ScreenA'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Go to ScreenB'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
