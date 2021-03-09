import "package:flutter/material.dart";
import 'package:flutter_app_2/main.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Main Page")),
        body: Center(
          child: RaisedButton(
            child: Text("Go To Second Page"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Utama();
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
