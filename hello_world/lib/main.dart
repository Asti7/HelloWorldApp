import 'package:flutter/material.dart';
import 'package:hello_world/main_page.dart';
import 'intro_page.dart';

void main() => runApp(HelloWorldApp());

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        'intro_page':(context) => IntroPage(),
        'main_page':(context) => MainPage()
      },
    );
  }
}
