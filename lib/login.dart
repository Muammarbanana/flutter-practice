import "package:flutter/material.dart";
import 'package:flutter_app_2/mainpage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Login Page")),
        body: Center(
          child: RaisedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return MainPage();
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
