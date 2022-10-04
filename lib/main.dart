import 'dart:core';

import 'package:firstapp/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//Data Types

  // double temp = 33.22;
  // var num = "two";
  // final pi = 3.14;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage() ,
    );
  }
}
