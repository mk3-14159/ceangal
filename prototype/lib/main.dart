import 'package:com/main_dating.dart';
import 'package:com/main_profile.dart';
import 'package:flutter/material.dart';
import 'package:com/main_coupons.dart';
import 'package:com/main_social.dart';
import 'package:com/main_likes.dart';
import 'package:com/menu_bar.dart';

import 'login_pages/login.dart';





void main() => runApp( MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Controller(),
    ); //MaterialApp
  }
}



class Controller extends StatefulWidget{

  const Controller({Key key}) : super (key: key);

  @override
  _Controller createState() => _Controller();
}



class _Controller extends State<Controller> {

  int _selectedIndex = 2;
  final List<Widget> _pages = [
    DatingPage(),
    LikesPage(),
    SocialPage(),
    ProfilePage(),
    CouponsPage(),
    LoginPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),

        appBar: AppBar(
          title: FittedBox(
            fit: BoxFit.fitWidth,
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      height: 1, fontSize: 40,
                    ),
                    children : [
                      TextSpan(
                        text: "Ceangal ",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: "NUIG",
                          style: TextStyle(
                            color: const Color(0xFFFF0088),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,)
                      ),
                    ]
                )
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF16E3B7),
        ),

      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Dating'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Likes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Social'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text('Coupons'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('login'),
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) => {
          setState(() {
            _selectedIndex = index;
          })
        },
        type : BottomNavigationBarType.fixed,
      )
    );
  }
}









