import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:sedo/Animation/FadeAnimation.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({ super.key });

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  
  //text controllers
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim()
    );
  }
  //dispose controllers for memory management
  // @override
  // void dispose(){
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-1.png')
                              )
                          ),
                        )),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Color.fromARGB(255, 227, 229, 226), fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Color(0xD3D3D3)))
                              ),
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(97, 128, 106, 1),
                                  Color.fromRGBO(97, 128, 106, .6),
                                ]
                            )
                        ),
                        child: Center(
                            child: GestureDetector(
                              onTap: signIn,
                              //onPressed:() {Navigator.pushNamed(context, 'home');},
                              child:const Text("Login",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),)
                        ),
                      ),
                      SizedBox(height: 50,),
                      Text("Do not have an account?"),
                      TextButton(
                          onPressed:() {Navigator.pushNamed(context, 'signup');},
                          child:const Text('Sign Up',style: TextStyle(color: Color.fromARGB(255, 46, 53, 45), fontWeight: FontWeight.bold)))
                      ,//FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(97, 128, 106, 1)),)),
                      TextButton(
                          onPressed:() {Navigator.pushNamed(context, 'forgot');},
                          child:const Text('Forgot Password?',style: TextStyle(color: Color.fromRGBO(97, 128, 106, 1), fontWeight: FontWeight.bold)))

                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

