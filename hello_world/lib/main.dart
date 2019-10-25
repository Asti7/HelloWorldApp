import 'package:flutter/material.dart';
import 'package:hello_world/main_page.dart';
import 'package:hello_world/start_page.dart';
import 'about_page.dart';
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
        'start_page':(context) => StartPage(),
        'main_page':(context) => MainPage(),
        'about_page':(context) => AboutPage(),
      },
    );
  }
}
