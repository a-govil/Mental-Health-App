

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 223, 204),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Color.fromARGB(255, 122, 142, 120),size: 35,),label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper,color: Color.fromARGB(255, 122, 142, 120),size: 35),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Color.fromARGB(255, 122, 142, 120),size: 35),label: '')
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                
              ),
            ),
            //greetings row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                    'Hi, Anant!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 90, 104, 89),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '1st October, 2022',
                    style: TextStyle(
                      color: Color.fromARGB(255, 118, 136, 117),
                      fontSize: 12,
                      
                    ),
                  ),
                    ]
                 
                  ),
                  Container(
                    
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,5,17.0),
                      child: Icon(
                        Icons.notifications,
                        size: 40,
                        color: Color.fromARGB(255, 83, 98, 82),
                        //add border radius
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //search bar
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0,8,20.0,8),
              child: Container(
                decoration: BoxDecoration(
                  
                  color: Colors.white,
                   borderRadius: BorderRadius.circular(25),),
                  
                 
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    Icon(Icons.search,
                    color: Colors.black,),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Search',
                    style:TextStyle(color:Colors.black,),)
                     


                  ],),
                )
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //how do you feel?
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:25.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 90, 104, 89),
                          fontSize: 18 ,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz,
                      color: Colors.white,
                      
                      )
                 ],
               ),
             ),
             SizedBox(
              height: 25,
            ),

    // 4 different faces

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              
              Column(
                children:[
              //bad
              Container(
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)

      ),
      padding: EdgeInsets.all(16),
      child:Center(child:Text('😩',
      style: TextStyle(
        fontSize: 28,
        
      )
      )),

      ),
      SizedBox(
        height:8
      ),
      Text(
        "Bad",
        style: TextStyle(color: Color.fromARGB(255, 89, 100, 81),
        fontWeight: FontWeight.bold,)
      ),
                ],
              ),

              // fine
              Column(
                children:[
              //bad
              Container(
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)

      ),
      padding: EdgeInsets.all(16),
      child:Center(child:Text('😐',
      style: TextStyle(
        fontSize: 28,
      )
      )),

      ),
      SizedBox(
        height:8
      ),
      Text(
        "Fine",
        style: TextStyle(color: Color.fromARGB(255, 89, 100, 81),
        fontWeight: FontWeight.bold
        )
      ),
                ],
              ),

              //well
            Column(
                children:[
              //bad
              Container(
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)

      ),
      padding: EdgeInsets.all(16),
      child:Center(child:Text('😊',
      style: TextStyle(
        fontSize: 28,
      )
      )),

      ),
      SizedBox(
        height:8
      ),
      Text(
        "Well",
        style: TextStyle(color: Color.fromARGB(255, 89, 100, 81),
        fontWeight: FontWeight.bold
        )
      ),
                ],
              ),
              //excellent
              Column(
                children:[
              //bad
              Container(
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)

      ),
      padding: EdgeInsets.all(16),
      child:Center(child:Text('😁',
      style: TextStyle(
        fontSize: 28,
      )
      )),

      ),
      SizedBox(
        height:8
      ),
      Text(
        "Excellent",
        style: TextStyle(color: Color.fromARGB(255, 89, 100, 81),
        fontWeight: FontWeight.bold
        )
      ),
                ],
              ),
            ],),

           SizedBox(height: 25,),
           Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('Exercises',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
                  Icon(Icons.more_horiz,),
                ],
              ),
              SizedBox(height: 20,),
              //list view
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 242, 239),
                  borderRadius: BorderRadius.circular(16),
                   
                ),
                child: ListTile(
                  leading: Icon(Icons.select_all_sharp,color: Color.fromARGB(255, 122, 142, 120)),
                  title: Text('Meditation'),
                  subtitle: Text('15 Meditation Exercises'),

                  ),
              ),
              SizedBox(height: 25,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 242, 239),
                  borderRadius: BorderRadius.circular(16),
                   
                ),
                child: ListTile(
                  leading: Icon(Icons.face_rounded, color: Color.fromARGB(255, 122, 142, 120),),
                  title: Text('Yoga'),
                  subtitle: Text('Practice 10 yoga positions'),
                  
                  ),
              ),
              SizedBox(height: 25,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 242, 239),
                  borderRadius: BorderRadius.circular(16),
                   
                ),
                child: ListTile(
                  leading: Icon(Icons.air,color: Color.fromARGB(255, 122, 142, 120)),
                  title: Text('Breathing Exercises'),
                  subtitle: Text('Practice breathing exercices'),
                  
                  ),
              ),
              SizedBox(height: 25,),
              
              
            ],)),
           ),
           
           ), 
            
          ],
        ),
      ),
    );
  }
}