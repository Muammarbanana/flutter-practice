import "package:flutter/material.dart";

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Custom Card"),
          backgroundColor: Colors.red,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.redAccent, Colors.yellowAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              20,
                              50 + MediaQuery.of(context).size.height * 0.35,
                              20,
                              20),
                          child: Column(
                            children: [
                              Text(
                                "Beautiful Sunset at Paddy Field",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.redAccent),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Posted on ",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    Text(
                                      "11 March 2020",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.redAccent),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 5, 20, 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(flex: 10),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.grey,
                                    ),
                                    Spacer(flex: 1),
                                    Text(
                                      "99",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    Spacer(flex: 5),
                                    Icon(
                                      Icons.comment,
                                      color: Colors.grey,
                                    ),
                                    Spacer(flex: 1),
                                    Text(
                                      "899",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    Spacer(flex: 10),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
