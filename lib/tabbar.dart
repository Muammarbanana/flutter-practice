import "package:flutter/material.dart";

class TabBarMas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Tab Bar"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.comment),
                text: "Comment",
              ),
              Tab(icon: Icon(Icons.computer)),
              Tab(text: "News"),
              Tab(text: "Anime"),
            ]),
          ),
          body: TabBarView(children: [
            Text("Komentar"),
            Text("Komputer"),
            Text("Berita"),
            Text("Anime"),
          ]),
        ),
      ),
    );
  }
}
