import 'package:flutter/material.dart';
import 'package:sedo/main_page.dart';
import 'package:sedo/signup.dart';
import 'package:sedo/login.dart';
import 'package:sedo/forgot.dart';
import 'package:sedo/home.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  // access to native code
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
    routes: {
      'signup': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'forgot': (context) => MyForgot(),
      'home': (context) => HomePage()



    },
  ));
}