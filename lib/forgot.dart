import 'package:flutter/material.dart';
//import 'package:sedo/Animation/FadeAnimation.dart';



class MyForgot extends StatefulWidget {
  const MyForgot({ super.key });

  @override
  _MyForgotState createState() => _MyForgotState();
}

class _MyForgotState extends State<MyForgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          //margin: EdgeInsets.only(top: 0),
                          child: Center(
                            child: Text("Forgot Password", style: TextStyle(color: Color.fromARGB(255, 227, 229, 226), fontSize: 30, fontWeight: FontWeight.bold),),

                          ),
                        ),
                      ),
                      SizedBox(height: 30,),SizedBox(height: 30,),



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
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),


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
                          child: Text("Send", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 50,),
                      TextButton(
                          onPressed:() {Navigator.pushNamed(context, 'login');},
                          child:const Text('Login',style: TextStyle(color: Color.fromARGB(255, 46, 53, 45), fontWeight: FontWeight.bold))),


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