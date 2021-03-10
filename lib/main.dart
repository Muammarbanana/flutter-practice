import 'package:flutter/material.dart';
import 'package:flutter_app_2/animatedcont.dart';
import 'package:flutter_app_2/anoningusmethod.dart';
import 'package:flutter_app_2/card.dart';
import 'package:flutter_app_2/customappbar.dart';
import 'package:flutter_app_2/draggable.dart';
import 'package:flutter_app_2/flexiblewidget.dart';
import 'package:flutter_app_2/imagewid.dart';
import 'package:flutter_app_2/listview.dart';
import 'package:flutter_app_2/login.dart';
import 'package:flutter_app_2/mediaquery.dart';
import 'package:flutter_app_2/second.dart';
import 'package:flutter_app_2/stack.dart';
import 'package:flutter_app_2/textfield.dart';
import 'package:flutter_app_2/textstyle.dart';
import 'stateful.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}

class Utama extends StatefulWidget {
  @override
  _UtamaState createState() => _UtamaState();
}

class _UtamaState extends State<Utama> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Mequ(),
        Nginput(),
        Carding(),
        CustomAppBar(),
        AnimatedCont(),
        Anoningus(),
        Ngedrag(),
        FleksibelWidget(),
        Gambaria(),
        ListoView(),
        ContainerApp(),
        Sutakku(),
        StatefulApp(),
        Tekkusu(),
      ],
    );
  }
}
