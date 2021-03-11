import "package:flutter/material.dart";

class HeroJennie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[20],
        appBar: AppBar(title: Text("Latihan Hero ClipRRect")),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return HeroJennieTwo();
              }),
            );
          },
          child: Container(
            width: 100,
            height: 100,
            child: Hero(
              tag: "pp",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.theconversation.com/files/175247/original/file-20170622-26496-7ff7v5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroJennieTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[20],
        appBar: AppBar(title: Text("Latihan Hero ClipRRect")),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: Hero(
              tag: "pp",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.theconversation.com/files/175247/original/file-20170622-26496-7ff7v5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
