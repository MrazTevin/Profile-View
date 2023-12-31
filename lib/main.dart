import 'package:flutter/material.dart';
import 'package:profile_app/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Views',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Arial",
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white, fontSize: 18.0),
         
        ),
      ),
      home: Home(),
    );
  }
}
