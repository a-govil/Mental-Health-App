
import 'package:flutter/material.dart';
import 'package:day12_login/signup.dart';
import 'package:day12_login/login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'signup': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}