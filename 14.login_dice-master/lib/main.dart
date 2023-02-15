import 'package:flutter/material.dart';
import 'dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Center(
                child: Image(
                  width: 150,
                  image: AssetImage('image/chef.gif'),
                ),
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.teal,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            label: Text('Enter Dice'),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: controller,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: Text('Enter Password'),
                          ),
                          keyboardType: TextInputType.text,
                          controller: controller2,
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        ButtonTheme(
                          minWidth: 100.0,
                          height: 50.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            child: Icon(
                              Icons.forward,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            onPressed: () {
                              final snackBar = SnackBar(
                                content: Text('Wrong password!'),
                                duration: Duration(seconds: 3),
                                backgroundColor: Colors.redAccent,
                              );

                              final snackBar2 = SnackBar(
                                content: Text('Wrong ID!'),
                                duration: Duration(seconds: 3),
                                backgroundColor: Colors.redAccent,
                              );

                              final snackBar3 = SnackBar(
                                content: Text('Wrong Everything!'),
                                duration: Duration(seconds: 3),
                                backgroundColor: Colors.redAccent,
                              );
                              if (controller.text == 'dice' &&
                                  controller2.text == '1234') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Dice(),
                                  ),
                                );
                              } else if (controller.text == 'dice' &&
                                  controller2.text != '1234') {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else if (controller.text != 'dice' &&
                                  controller2.text == '1234') {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar2);
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar3);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
