import 'package:flutter/material.dart';

class Sutakku extends StatefulWidget {
  @override
  _SutakkuState createState() => _SutakkuState();
}

class _SutakkuState extends State<Sutakku> {
  List<Widget> listo = [];

  _SutakkuState() {
    for (int i = 0; i < 30; i++) {
      listo.add(Text(
        "Belajar Flutter Asyik Sekali",
        style: TextStyle(fontSize: 20),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Latihan Stack dan Align")),
            body: Stack(
              children: [
                Column(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Flexible(
                                flex: 1, child: Container(color: Colors.white)),
                            Flexible(
                                flex: 1,
                                child: Container(color: Colors.black12))
                          ],
                        )),
                    Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Flexible(
                                flex: 1,
                                child: Container(color: Colors.black12)),
                            Flexible(
                                flex: 1, child: Container(color: Colors.white))
                          ],
                        ))
                  ],
                ),
                ListView(children: listo),
                Align(
                  alignment: Alignment(0, 0.75),
                  child: RaisedButton(
                    color: Colors.yellow,
                    child: Text("Tombol Pokoknya"),
                    onPressed: null,
                  ),
                )
              ],
            )));
  }
}
