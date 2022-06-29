// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/home.dart';
import 'package:test/about.dart';
import 'package:test/projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Portfolio",
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => Home(),
          'about': (context) => About(),
          'projects': (context) => Project()
        });
  }
}
