import 'package:flutter/material.dart';
import 'package:sedo/home.dart';
import 'package:sedo/profile.dart';
import 'package:sedo/discover.dart';

class UserPage extends StatefulWidget {
  const UserPage({ super.key });

  @override
  _MyUserPage createState() => _MyUserPage();
}

class _MyUserPage extends State<UserPage> {
  int currentIndex=0;

  List screens=[
    HomePage(),
    DiscoverPage(),
    ProfilePage()

  ];

  void onTap(int index){
    setState(() {
      currentIndex= index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      backgroundColor: Color.fromARGB(255, 206, 223, 204),
      bottomNavigationBar: BottomNavigationBar(
          
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          onTap: onTap,
          currentIndex: currentIndex,
          
          items: [
            
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Color.fromARGB(255, 122, 142, 120),size: 35,),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper,color: Color.fromARGB(255, 122, 142, 120),size: 35),label: 'Discover'),
            BottomNavigationBarItem(icon: Icon(Icons.chat,color: Color.fromARGB(255, 122, 142, 120),size: 35),label: 'Profile')
          ])
    );
  }
}