import 'package:flutter/material.dart';
import 'package:sedo/signup.dart';
import 'package:sedo/login.dart';
import 'package:sedo/forgot.dart';
import 'package:sedo/home.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'signup': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'forgot': (context) => MyForgot(),
      'home': (context) => HomePage()



    },
  ));
}