import 'package:firstapp/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(color: Colors.white,  child: SingleChildScrollView(  child:Column(children: [
    Image.asset("sources/images/login_image.png",fit: BoxFit.cover, /*height: 800,*/),

      SizedBox(height: 25,),
      Text("Welcome" , style: TextStyle (fontWeight: FontWeight.bold, fontSize: 30,
      )),
      SizedBox(height: 25,),



      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
        child: Column(children: [
          TextFormField(decoration: InputDecoration(hintText: "Enter User Name", labelText: "Username"
          )
          ),
          TextFormField( obscureText: true,decoration: InputDecoration(hintText: "Enter Password", labelText: "Password"
          )
          ),
          SizedBox(height: 40,),
          ElevatedButton( onPressed: ()
            {
             Navigator.pushNamed(context, MyRoute.homePage);
            }, child: Text("Login"), style: TextButton.styleFrom(minimumSize: Size(150, 40)),)

        ],),
      )
    ]),


),
    );
  }
}
