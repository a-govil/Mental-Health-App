import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sedo/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ super.key });

  @override
  _MyProfilePage createState() => _MyProfilePage();
}


class _MyProfilePage extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      
           body: SafeArea(
        child: Column(
          children: [


              
              MaterialButton(onPressed: (){
                        FirebaseAuth.instance.signOut();
                      },
                    color: Colors.blueGrey,
                    child: Text('sign out'),
                      ), 
          ]
              ),
    )
    );
  }
}