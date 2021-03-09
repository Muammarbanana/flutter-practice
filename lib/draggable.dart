import "package:flutter/material.dart";

class Ngedrag extends StatefulWidget {
  @override
  _NgedragState createState() => _NgedragState();
}

class _NgedragState extends State<Ngedrag> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Draggable")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidateData, rejectedData) {
                return (isAccepted)
                    ? SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation: 10,
                        ),
                      )
                    : SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                          elevation: 10,
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
