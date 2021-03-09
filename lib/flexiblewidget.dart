import "package:flutter/material.dart";

class FleksibelWidget extends StatefulWidget {
  @override
  _FleksibelWidgetState createState() => _FleksibelWidgetState();
}

class _FleksibelWidgetState extends State<FleksibelWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Latihan Flexible Widget")),
          body: Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(children: [
                    Flexible(flex: 1, child: Container(color: Colors.red)),
                    Flexible(flex: 1, child: Container(color: Colors.blue)),
                    Flexible(flex: 1, child: Container(color: Colors.yellow))
                  ])),
              Flexible(flex: 2, child: Container(color: Colors.orange)),
              Flexible(flex: 1, child: Container(color: Colors.purple))
            ],
          )),
    );
  }
}
