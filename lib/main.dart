import 'package:flutter/material.dart';
import 'homepage.dart';
import 'track_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EyeMe",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/tracks': (BuildContext context) => TrackInfo()
      }
    );
  }
}


