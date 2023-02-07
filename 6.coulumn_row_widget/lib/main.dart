import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Column and Row Examples',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        //Safe Area = usable screen
        child: Center(
          child: Column(
            //width size = children width
            //height size = whole area
            verticalDirection: VerticalDirection.up, // direction change
            mainAxisAlignment: MainAxisAlignment.center,
            //main axis of column?
            mainAxisSize: MainAxisSize.min, //now height is minimized
            crossAxisAlignment: CrossAxisAlignment.end, // algien in the end
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              Container(
                width: 400,
                height: 100,
                color: Colors.red,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
