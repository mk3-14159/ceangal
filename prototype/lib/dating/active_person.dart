import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActiveCard extends StatefulWidget{
  final String personsName;


  const ActiveCard({Key key, this.personsName}) : super (key: key);

  @override
  _ActiveCard createState() => _ActiveCard();
}


class _ActiveCard extends State<ActiveCard> {
  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column( //TOP IMAGE'S STACK FOR LAYERING
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink
            ),
          ),
          RichText(
              text: TextSpan(
                  text: "${widget.personsName}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )
              )
          )

        ],
      ),
    );
  }
}
