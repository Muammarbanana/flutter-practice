import "package:flutter/material.dart";

class Mequ extends StatefulWidget {
  @override
  _MequState createState() => _MequState();
}

class _MequState extends State<Mequ> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Media Query"),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainers(),
              )
            : Row(
                children: generateContainers(),
              ),
      ),
    );
  }

  List<Widget> generateContainers() {
    return [
      Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height / 4,
      ),
      Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height / 4,
      ),
      Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height / 4,
      ),
    ];
  }
}
