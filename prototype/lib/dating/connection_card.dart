import 'package:flutter/material.dart';

class ConnectionCard extends StatefulWidget{
  final String firstName;
  final String description;

  const ConnectionCard({Key key, this.firstName, this.description}) : super (key: key);

  @override
  _ConnectionCard createState() => _ConnectionCard();
}


class _ConnectionCard extends State<ConnectionCard> {
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
                color: Colors.yellow
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text.rich(
              TextSpan(
                  children: [
                    TextSpan(
                      text: "${widget.firstName}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "\n${widget.description}",
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
