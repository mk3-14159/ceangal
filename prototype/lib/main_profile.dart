import 'package:flutter/material.dart';
import 'profile/get_profile.dart';

class ProfilePage extends StatefulWidget{

  const ProfilePage({Key key}) : super (key: key);

  @override
  _ProfilePage createState() => _ProfilePage();
}



class _ProfilePage extends State<ProfilePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        child: GetProfile(),
      ),


    );


  }
}