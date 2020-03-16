import 'package:flutter/material.dart';
import 'coupon_card.dart';

class CouponsSlivers extends StatefulWidget{

  const CouponsSlivers({Key key}) : super (key: key);

  @override
  _CouponsSlivers createState() => _CouponsSlivers();
}



class _CouponsSlivers extends State<CouponsSlivers> {



  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
        color: Colors.white,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  CouponCard(
                    imageUrl: "assets/images/plants_1080_1.png",
                    businessName: "Tolteca",
                    discountValue: "15%",
                    descriptionFood: "Buritos",
                    descriptionCuisine: "Mexican",
                    descriptionHours: "10am to 10pm",
                    descriptionAddress: "40 Candles Street, Galway",
                  ),
                  CouponCard(
                    imageUrl: "assets/images/plants_1080_2.png",
                    businessName: "Jalan Jalan",
                    discountValue: "20%",
                    descriptionFood: "Curry",
                    descriptionCuisine: "Oriental",
                    descriptionHours: "10am to 10pm",
                    descriptionAddress: "40 Candles Street, Galway",
                  ),
                  CouponCard(
                    imageUrl: "assets/images/plants_1080_3.png",
                    businessName: "Yummy snack",
                    discountValue: "10%",
                    descriptionFood: "Grass",
                    descriptionCuisine: "Grass",
                    descriptionHours: "3am to 4am",
                    descriptionAddress: "Field, Galway",
                  ),
              ]
              )
            ),
          ],
        )
    );


  }
}
