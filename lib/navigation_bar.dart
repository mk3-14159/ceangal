import 'package:flutter/material.dart';
import 'main.dart';
import 'main_coupons.dart';

class NavBar extends StatefulWidget{

  const NavBar({Key key}) : super (key: key);

  @override
  _NavBar createState() => _NavBar();
}



class _NavBar extends State<NavBar> {

  int _selectedIndex = 2;
  final List<Widget> _pages = [
    CouponsPage(),
    CouponsPage(),
    CeangalSocialWidget(),
    CouponsPage(),
    CouponsPage()
  ];
  void _onNavbarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            _pages[_selectedIndex],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

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
      onTap: _onNavbarTapped,
      type : BottomNavigationBarType.fixed,
    );
  }
}
