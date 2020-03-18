import 'package:flutter/material.dart';
import 'main_coupons.dart';
import 'main_social.dart';
import 'menu_bar.dart';






void main() => runApp( MyApp());

class MyApp extends StatelessWidget{
  static const String _title = 'Ceangal NUIG';

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
    CouponsPage(),
    CouponsPage(),
    CeangalSocialWidget(),
    CouponsPage(),
    CouponsPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),

        appBar: AppBar(
          title: RichText(
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
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Dating'),
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









