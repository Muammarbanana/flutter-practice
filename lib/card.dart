import "package:flutter/material.dart";

class Carding extends StatefulWidget {
  @override
  _CardingState createState() => _CardingState();
}

class _CardingState extends State<Carding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Carding")),
        body: ListView(
          children: [
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
            buildCard(Icons.ac_unit, "Salju"),
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconData),
            Text(text),
            Icon(Icons.add_business_rounded)
          ],
        ),
      ),
      elevation: 5,
    );
  }
}
