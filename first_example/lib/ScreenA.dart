import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ScreenA'),
        ),
        drawer: Drawer(
          child: ListView(children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Someone'),
              accountEmail: Text('somoene@mail.com'),
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('User 1'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('User 2'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('User 3'),
              trailing: Icon(Icons.add),
            ),
          ]),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                },
                child: Text('Screen B'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
                child: Text('Screen C'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
