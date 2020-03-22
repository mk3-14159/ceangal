import 'package:flutter/material.dart';

class LikeCard extends StatefulWidget{
  final String firstName;
  final String timestamp;

  const LikeCard({Key key, this.firstName, this.timestamp}) : super (key: key);

  @override
  _LikeCard createState() => _LikeCard();
}


class _LikeCard extends State<LikeCard> {
  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row( //PUT IMAGE TO THE LEFT OF THE DESCRIPTION
        children: <Widget>[
          new Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text.rich(
              TextSpan(
                  children: [
                    TextSpan(
                      text: "${widget.firstName} liked your profile.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "\n${widget.timestamp}",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),

                  ]
              ),
              textAlign: TextAlign.left,
            ),
          )

        ],
      ),
    );
  }



}
