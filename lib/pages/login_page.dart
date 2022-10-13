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
  final _formKey= GlobalKey<FormState>();
  moveToHome(BuildContext context) async
  {
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.homePage);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(color: Colors.white,
      child: Form(
        key: _formKey,
      child: Column(children: [
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
            validator: (value)
              {
                if(value!.isEmpty)
                  {
                    return "Username cannot be empty";
                  }
                return null;
              },

            onChanged: (value)
              {
                name=value;
                setState(() {

                });
              },
            ),
            TextFormField( obscureText: true,decoration: InputDecoration(hintText: "Enter Password", labelText: "Password"
            )
                ,
              validator: (value)
        {
        if(value!.isEmpty)
        {
        return "Password cannot be empty";
        }
        else if(value.length<6)
          {
            return "Password length should be greater than 6";
          }
        return null;
        },


            ),
            SizedBox(height: 40,),
            //InkWell Ancestor should be Material for ripple effect
            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(changeButton?50:8),
              child: InkWell(

                onTap: () => moveToHome(context),
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

                  // shape: changeButton?BoxShape.circle:BoxShape.rectangle,

                //  color: Colors.deepPurple,



              ),
              ),
            ),
            // ElevatedButton( onPressed: ()
            //   {
            //    Navigator.pushNamed(context, MyRoute.homePage);
            //   }, child: Text("Login"), style: TextButton.styleFrom(minimumSize: Size(150, 40)),)

          ],),
        )
      ]),
    ),



    );
  }
}
