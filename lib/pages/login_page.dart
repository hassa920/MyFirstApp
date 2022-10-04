import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: Text("Login Page"),),body: Center(child: Text("Login Page", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20, color: Colors
    .orangeAccent), ) , ),


    );
  }
}
