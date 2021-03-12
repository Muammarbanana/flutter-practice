import "package:flutter/material.dart";

class TabBarMas extends StatelessWidget {
  final TabBar myTabBar = TabBar(
    tabs: [
      Tab(
        icon: Icon(Icons.comment),
        text: "Comment",
      ),
      Tab(icon: Icon(Icons.computer)),
      Tab(text: "News"),
      Tab(text: "Anime"),
    ],
    indicator: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.purple],
      ),
      border: Border(
        bottom: BorderSide(color: Colors.white, width: 5),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Tab Bar"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                child: myTabBar,
                color: Colors.lightGreen,
              ),
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text("Komentar")),
            Center(child: Text("Komputer")),
            Center(child: Text("Berita")),
            Center(child: Text("Anime")),
          ]),
        ),
      ),
    );
  }
}
