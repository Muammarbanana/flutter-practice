import "package:flutter/material.dart";

class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Custom Button InkWell"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                shape: StadiumBorder(),
                color: Colors.blue,
                child: Text(
                  "Tombol Biasa",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.yellow],
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                        child: Text(
                          "Tombol Kustom",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                      splashColor: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
