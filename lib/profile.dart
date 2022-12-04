import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ super.key });

  @override
  _MyProfilePage createState() => _MyProfilePage();
}


class _MyProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 223, 204),
      
          body: SafeArea(
            child: 
            Column(
              children: [
                Text('profile page'),

              ],
              ),
              ),
    );
  }
}