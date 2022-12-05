import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sedo/discover.dart';
import 'package:sedo/home.dart';
import 'package:sedo/user.dart';
import 'package:sedo/profile.dart';
import 'package:sedo/login.dart';


class MainPage extends StatelessWidget{
  const MainPage({Key? key}):super(key:key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData){
          return UserPage();
        } else {
          return MyLogin();
        }
       },
      ),
    );
  }
}