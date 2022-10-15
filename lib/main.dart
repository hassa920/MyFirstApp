import 'dart:core';

import 'package:firstapp/pages/homepage.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(/*brightness: Brightness.dark,*/
      primarySwatch: Colors.amber

      ),
      initialRoute: MyRoute.homePage,
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.homePage: (context) => HomePage(),
        MyRoute.login: (context) => LoginPage(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
