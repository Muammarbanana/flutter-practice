import "package:flutter/material.dart";

class Anoningus extends StatefulWidget {
  @override
  _AnoningusState createState() => _AnoningusState();
}

class _AnoningusState extends State<Anoningus> {
  String message = "Text Sahaja";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Anoningus")),
          body: Center(
            child: Column(
              children: [
                Text(message),
                RaisedButton(
                    child: Text("Tekans"),
                    onPressed: () {
                      setState(() {
                        message = "Tombol sudah ditekan";
                      });
                    })
              ],
            ),
          )),
    );
  }
}
