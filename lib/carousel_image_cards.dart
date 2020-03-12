import 'package:flutter/material.dart';

class CarouselCard extends StatefulWidget{
  final String imageUrl;
  final String groupName;
  final int memberCount;

  CarouselCard({Key key, this.imageUrl, this.groupName, this.memberCount}) : super (key: key);

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
              image: AssetImage(widget.imageUrl),
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
                  text: widget.groupName,
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
          padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.person,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: (widget.memberCount).toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ]
                )
            ),
          ),
        ),

      ],
    );
  }
}
