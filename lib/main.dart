import 'package:abairtabs/screens/main_pagee.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab Container',
      theme: ThemeData(
        primaryColor:  Color(0xffffffff),
      ),
      home: Main_Pagee(),
    );
  }
}
