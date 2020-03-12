import 'package:flutter/material.dart';

class CarouselCard extends StatefulWidget{
  CarouselCard({Key key}) : super (key: key);

  @override
  _CarouselCard createState() => _CarouselCard();
}



class _CarouselCard extends State<CarouselCard> {

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack( //TOP IMAGE'S STACK FOR LAYERING
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/cow_512_6.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),

        ),
        new Container( //TOP IMAGE GRADIENT OVERLAY
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xCC000000),
                const Color(0x00000000),
                const Color(0x00000000),
                const Color(0xCC000000),
              ],
            ),
          ),
        ),
        new Container( //TOP IMAGE TEXT OVERLAY
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text.rich(
                TextSpan(
                  text: 'International Friends',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                )
            ),
          ),
        ),
        new Container( //TOP IMAGE TEXT OVERLAY
          padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text.rich(
                TextSpan(
                  text: '402',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                )
            ),
          ),
        ),
        new Container( //TOP IMAGE TEXT OVERLAY
          padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: new Icon(
              Icons.person,
              color: Colors.white,
              size: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
