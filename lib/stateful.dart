import "package:flutter/material.dart";

class StatefulApp extends StatefulWidget {
  @override
  _StatefulAppState createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number += 1;
    });
  }

  void kurangBilangan() {
    setState(() {
      number -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Stateful Widget")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(
                    fontSize: (number.toDouble() * 2),
                    fontWeight: FontWeight.w500),
              ),
              RaisedButton(
                  child: Text("Tambah Bilangan"), onPressed: tekanTombol),
              RaisedButton(
                  child: Text("Kurang Bilangan"), onPressed: kurangBilangan)
            ],
          ),
        ),
      ),
    );
  }
}
