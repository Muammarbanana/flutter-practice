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
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.adb_sharp),
                    suffix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.red,
                    ),
                    prefixIcon: Icon(Icons.verified_user),
                    labelText: "Nama Lengkap"),
                maxLength: 10,
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
