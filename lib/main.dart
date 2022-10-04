import 'dart:core';

import 'package:firstapp/pages/homepage.dart';
import 'package:firstapp/pages/login_page.dart';
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

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(/*brightness: Brightness.dark,*/
      primarySwatch: Colors.amber
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
