import 'package:flutter/material.dart';

class CouponCard extends StatefulWidget{
  final String imageUrl;
  final String businessName;
  final String discountValue;
  final String descriptionFood;
  final String descriptionCuisine;
  final String descriptionHours;
  final String descriptionAddress;
  const CouponCard({Key key,this.imageUrl, this.businessName, this.discountValue, this.descriptionFood, this.descriptionCuisine, this.descriptionHours, this.descriptionAddress}) : super (key: key);

  @override
  _CouponCard createState() => _CouponCard();
}



class _CouponCard extends State<CouponCard> {



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack( //STACKING THE PROMO CODE ONTOP OF THE IMAGE
      //alignment: Alignment.topLeft,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container( //THE BACKGROUND IMAGE
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0), //MAKE SPACE BETWEEN IMAGES
              alignment: Alignment.topLeft,
              child: Image.asset(
                  "${widget.imageUrl}",
              )
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
              alignment: Alignment.topLeft,
              child: Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                        text: "${widget.businessName}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "\n${widget.descriptionFood} - ${widget.descriptionCuisine} - ${widget.descriptionHours} - ${widget.descriptionAddress}",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0,
                          color: Colors.black,
                        ),
                      ),

                    ]
                ),
              ),
            ),
          ],
        ),


        new Positioned( //WHITE SEMICIRCLE WITH PROMO INSIDE IT
          left: 290,
          top: 172,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                        text: "${widget.discountValue}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "\nPROMO",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),

                    ]
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )



      ],

    ),
    );

  }
}
