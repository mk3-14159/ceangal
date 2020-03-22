import 'package:flutter/material.dart';

class ProfileText extends StatefulWidget{
  final String firstName;
  final String age;
  final String description;


  const ProfileText({Key key, this.firstName, this.age, this.description}) : super (key: key);

  @override
  _ProfileText createState() => _ProfileText();
}


class _ProfileText extends State<ProfileText> {
  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[

          Align(
            alignment: Alignment.topLeft,
            child: Text.rich(  //NAME AND AGE
              TextSpan(
                text: "${widget.firstName}, ${widget.age}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: Text.rich( //DESCRIPTION
              TextSpan(
                text: "\n${widget.description}",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),

        ],
      )
    );
  }
}
