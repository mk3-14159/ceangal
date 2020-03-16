import 'package:flutter/material.dart';
import 'navigation_bar.dart';
import 'get_coupons.dart';

class CouponsPage extends StatefulWidget{

  const CouponsPage({Key key}) : super (key: key);

  @override
  _CouponsPage createState() => _CouponsPage();
}



class _CouponsPage extends State<CouponsPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavDrawer(),
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
          child: CouponsSlivers(),
      ),


      bottomNavigationBar: NavBar(),



    );


  }
}
