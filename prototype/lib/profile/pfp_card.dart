import 'package:flutter/material.dart';

class ProfilePictureCard extends StatefulWidget{
  final String imageUrl;


  const ProfilePictureCard({Key key, this.imageUrl}) : super (key: key);

  @override
  _ProfilePictureCard createState() => _ProfilePictureCard();
}


class _ProfilePictureCard extends State<ProfilePictureCard> {
  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack( //TOP IMAGE'S STACK FOR LAYERING
      children: <Widget>[
        new Container(
            child: Image(
                image: AssetImage(widget.imageUrl)
            )
        ),

      ],
    );
  }
}
