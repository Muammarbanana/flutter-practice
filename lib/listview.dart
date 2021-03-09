import "package:flutter/material.dart";

class ListoView extends StatefulWidget {
  @override
  _ListoViewState createState() => _ListoViewState();
}

class _ListoViewState extends State<ListoView> {
  List<Widget> widgets = [];

  _ListoViewState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Container(
        child: Center(
          child: Text(
            "Babi Ngepet",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w300),
          ),
        ),
        height: 100,
        width: 150,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
            borderRadius: BorderRadius.circular(20)),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan ListView")),
        body: ListView(children: widgets),
      ),
    );
  }
}
