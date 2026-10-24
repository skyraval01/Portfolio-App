import 'package:flutter/material.dart';
import 'package:porfolio_app/about.dart';
import 'package:porfolio_app/home.dart';
import 'package:porfolio_app/project.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Soho"),
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => MyHome(),
        'about': (context) => MyAbout(),
        'project': (context) => Myproject(),
      },
    );
  }
}
