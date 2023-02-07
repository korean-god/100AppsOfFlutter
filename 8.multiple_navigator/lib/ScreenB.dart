import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
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
                child: Text('Go to ScreenC'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
