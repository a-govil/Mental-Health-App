import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class DiscoverPage extends StatefulWidget {
  const DiscoverPage({ super.key });

  @override
  _MyDiscover createState() => _MyDiscover();
}

class _MyDiscover extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 60,
          left: 20,
          right: 20,
          bottom: 0,
          child: Container(
            child: Column(
              children: [
                Container(
                  child: header(),
                ),
                Container(
                  child: cards(),
                ),
                Container(
                  child: ongoing_project(),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget header() {
    return Row(
      children: [
        RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Discover ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            TextSpan(
              text: "Page",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ]),
        ),
        Spacer(),
        Icon(
          Icons.search,
          size: 17,
          color: Colors.grey[500],
        )
      ],
    );
  }

  Widget cards() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 206, 223, 204),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today's Tasks",
                style: TextStyle(
                    color: Color.fromARGB(255, 90, 104, 89),
                    fontWeight: FontWeight.w600,
                    fontSize: 19),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  
                  Text(
                    "1st December",
                    style: TextStyle(fontSize: 14, color:Colors.blueGrey[500]),
                  )
                ],
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 90, 104, 89),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "  Get started  ",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            Container(
              width: 180,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 206, 223, 204),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 90, 104, 89)),
                    child: Center(
                      child: Text(
                        "1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yoga",
                        style: TextStyle(
                            color: Color.fromARGB(255, 90, 104, 89),
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "3/5 left",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 206, 223, 204),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:Color.fromARGB(255, 90, 104, 89)),
                          child: Center(
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meditation",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 90, 104, 89),
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "4/5 done",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.blueGrey[500]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /* Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "mobile App",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "branding",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget ongoing_project() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                Text(
                  "Consultant",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(color: Colors.blueGrey[500]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xffE0E5F1)),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Image(
                        height: 60,
                        width: 60,
                        image: AssetImage(
                          "assets/images/doctor-avatar-male.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jonnathan Donrew",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Therapist, 7yrs",
                          style: TextStyle(
                            color: Colors.blueGrey[200],
                            height: 2,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 206, 223, 204),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "⭐4/5  ",
                        style: TextStyle(
                            color: Colors.blueGrey, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Stay home! Schedule an e-visit and discuss the plan with the doctor.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 90, 104, 89),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 206, 223, 204),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          
                          Text(
                            "Upcoming Session",
                            style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 90, 104, 89)),
                          ),
                          
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 223, 204),
                            borderRadius: BorderRadius.circular(20)),
                        child: /*Text(
                          "Start",
                          style: TextStyle(color: Colors.blueGrey),
                        ),*/
                        Icon(Icons.check,
                        color: Colors.black,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 206, 223, 204),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.play_circle,
                    color: Color.fromARGB(255, 90, 104, 89),
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yoga Session 1",
                      style: TextStyle(
                        color: Color.fromARGB(255, 90, 104, 89),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 206, 223, 204),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Join now",
                    style: TextStyle(color: Color.fromARGB(255, 90, 104, 89)),
                  ),
                ),
              ],
            ),
            
          ),
          SizedBox(
                  height: 20,
                ),
          Container(
            height: 80,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 206, 223, 204),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.play_circle,
                    color: Color.fromARGB(255, 90, 104, 89),
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yoga Session 2",
                      style: TextStyle(
                        color: Color.fromARGB(255, 90, 104, 89),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 206, 223, 204),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Join now",
                    style: TextStyle(color: Color.fromARGB(255, 90, 104, 89)),
                  ),
                ),
              ],
            ),
            
          )
        ],
      ),
    );
  }
}

