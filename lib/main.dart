import 'package:flutter/material.dart';
import 'package:flutter_assignment/LayoutScreen.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Study Jam",
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home:new LayoutScreen(),
    );
  }
  // This widget is the root of your application.
}

