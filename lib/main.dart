import 'package:flutter/material.dart';
import 'get_carousel_cards.dart';
import 'get_discover_slivers.dart';
import 'menu_bar.dart';
import 'navigation_bar.dart';

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



      body: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                    child: RichText(
                      text: TextSpan(
                        text: "Active Groups\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 24.0,
                          color: Colors.grey,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  )
                ),

                Expanded( //TOP HORIZONTAL CONTAINER
                  flex: 5,
                  child: GetCarousel(),
                ),

                Expanded( // BOTTOM HORIZONTAL CONTAINER
                    flex: 7,
                    child: DiscoverSlivers()
                )
              ]
          )
      ),


      bottomNavigationBar: NavBar(),






    );
  }
}






