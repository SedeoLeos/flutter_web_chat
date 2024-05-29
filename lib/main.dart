import 'package:web_chat/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "TTNorms",
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
