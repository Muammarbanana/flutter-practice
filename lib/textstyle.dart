import "package:flutter/material.dart";

class Tekkusu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Tekkusu Style")),
        body: Center(
          child: Text(
            "Ini Tekkusunya Gan",
            style: TextStyle(fontSize: 50, fontFamily: "Montserrat"),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
