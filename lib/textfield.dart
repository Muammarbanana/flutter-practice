import "package:flutter/material.dart";

class Nginput extends StatefulWidget {
  @override
  _NginputState createState() => _NginputState();
}

class _NginputState extends State<Nginput> {
  TextEditingController controller = TextEditingController(text: "Placeholder");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Textfield")),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
