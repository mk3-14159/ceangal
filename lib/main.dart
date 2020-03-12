import 'package:flutter/material.dart';
import 'get_carousel_cards.dart';
import 'get_discover_slivers.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget{
  static const String _title = 'Ceangal NUIG';

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: _title,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: CeangalSocialWidget(),
    ); //MaterialApp
  }
}

class CeangalSocialWidget extends StatefulWidget{
  CeangalSocialWidget({Key key}) : super (key: key);
  @override
  _CeangalSocialWidget createState() => _CeangalSocialWidget();
}






class _CeangalSocialWidget extends State<CeangalSocialWidget> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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



      body: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Expanded( //TOP HORIZONTAL CONTAINER
                  flex: 3,
                  child: GetCarousel(),
                ),

                Expanded( // BOTTOM HORIZONTAL CONTAINER
                    flex: 4,
                    child: DiscoverSlivers()
                )
              ]
          )
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
        onTap: _onItemTapped,
        type : BottomNavigationBarType.fixed,
      ),






    );
  }
}






