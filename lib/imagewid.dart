import "package:flutter/material.dart";

class Gambaria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Latihan Image Widget")),
          body: Center(
              child: Container(
            color: Colors.black,
            height: 200,
            width: 200,
            child: Image(
              image: NetworkImage(
                  "https://images.theconversation.com/files/175247/original/file-20170622-26496-7ff7v5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop"),
              fit: BoxFit.contain,
            ),
          ))),
    );
  }
}
