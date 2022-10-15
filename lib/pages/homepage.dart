import 'package:firstapp/widgets/drawer.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  final int a = 1;
  final String name = "Bob";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First App in flutter")),
      body: Center(
        child: Container(
            child: Text("$name day $a in flutter",)),
      ),

      drawer: MyDrawer(),
    );

  }
}

