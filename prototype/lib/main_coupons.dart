import 'package:flutter/material.dart';
import 'coupons/get_coupons.dart';

class CouponsPage extends StatefulWidget{

  const CouponsPage({Key key}) : super (key: key);

  @override
  _CouponsPage createState() => _CouponsPage();
}



class _CouponsPage extends State<CouponsPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Container(
          child: CouponsSlivers(),
      ),



    );


  }
}
