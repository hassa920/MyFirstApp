import 'package:firstapp/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Material(color: Colors.white, child:Column(children: [
    Image.asset("sources/images/login_image.png",fit: BoxFit.cover, /*height: 800,*/),

      SizedBox(height: 25,),
      Text("Welcome $name" , style: TextStyle (fontWeight: FontWeight.bold, fontSize: 30,
      )),
      SizedBox(height: 25,),



      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
        child: Column(children: [
          TextFormField(decoration: InputDecoration(hintText: "Enter User Name", labelText: "Username"
          ),
          onChanged: (value)
            {
              name=value;
              setState(() {

              });
            },
          ),
          TextFormField( obscureText: true,decoration: InputDecoration(hintText: "Enter Password", labelText: "Password"
          )

          ),
          SizedBox(height: 40,),
          InkWell(

            onTap: ()
            async {
             setState(()  {
               changeButton=true;
             });

             await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoute.homePage);
            },
           child:
          AnimatedContainer(
            duration: Duration(seconds: 1),
            height: 50,
            width: changeButton?50:150,
            alignment: Alignment.center,

            child: changeButton

            ? Icon(Icons.done,
                color: Colors.white,
            )

            :Text ("Login",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
            decoration: BoxDecoration(
              // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
              borderRadius: BorderRadius.circular(changeButton?50:8),
              color: Colors.deepPurple,

            )
            ,
          ),
          ),
          // ElevatedButton( onPressed: ()
          //   {
          //    Navigator.pushNamed(context, MyRoute.homePage);
          //   }, child: Text("Login"), style: TextButton.styleFrom(minimumSize: Size(150, 40)),)

        ],),
      )
    ]),



    );
  }
}
