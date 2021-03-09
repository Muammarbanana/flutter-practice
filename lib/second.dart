import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Row dan Column"),
          ),
          body: Container(
            margin: EdgeInsets.fromLTRB(100, 50, 100, 50),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.yellow],
                    begin: Alignment.topLeft)),
            child: Column(
              children: [
                Text(
                  "Fantat",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [Text("Kepala"), Text("Pundak"), Text("Lutut")],
                ),
                Row(
                  children: [Text("Kepala"), Text("Pundak"), Text("Lutut")],
                ),
                Text("Fantat")
              ],
            ),
          )),
    );
  }
}
