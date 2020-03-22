import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'likes/get_likes.dart';

class LikesPage extends StatefulWidget{

  const LikesPage({Key key}) : super (key: key);

  @override
  _LikesPage createState() => _LikesPage();
}



class _LikesPage extends State<LikesPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: <Widget>[

            Expanded(
                child: GetLikes()
            )
          ],
        ),
      ),



    );


  }
}
