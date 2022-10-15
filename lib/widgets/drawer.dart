import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  final imageUrl="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80";
  const MyDrawer({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Colors.red,
        child: ListView(
 padding: EdgeInsets.zero,

        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red
              ),
              margin: EdgeInsets.zero, accountName: Text ("Zain Tariq"), accountEmail: Text("zain22@gmail.com"),
           // currentAccountPicture: Image.network(imageUrl)
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),

                ),


            )

            ,),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.deepPurple,),
            title: Text("Home", textScaleFactor: 1.3, style: TextStyle(color: Colors.deepPurple),),
          ),

          ListTile(
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.deepPurple,),
            title: Text("Profile Circled", textScaleFactor: 1.3, style: TextStyle(color: Colors.deepPurple),),
          ),

          ListTile(
            leading: Icon(CupertinoIcons.mail,color: Colors.deepPurple,),
            title: Text("Email", textScaleFactor: 1.3, style: TextStyle(color: Colors.deepPurple),),
          )

        ],
    ),
      ),
    );
  }
}
