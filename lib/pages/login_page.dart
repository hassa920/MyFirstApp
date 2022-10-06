import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(color: Colors.white, child:Column(children: [
    Image.asset("sources/images/login_image.png",fit: BoxFit.cover,),

      SizedBox(height: 25,),
      Text("Welcome" , style: TextStyle (fontWeight: FontWeight.bold, fontSize: 20,
      )

      ),
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
          SizedBox(height: 25,),
          ElevatedButton( onPressed: ()
            {
              print("Login Button Clicked");
            }, child: Text("Login"), style: TextButton.styleFrom(),)

        ],),
      )
    ]),



    );
  }
}
