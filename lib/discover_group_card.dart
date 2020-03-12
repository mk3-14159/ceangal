import 'package:flutter/material.dart';

class GroupCard extends StatefulWidget{
  GroupCard({Key key}) : super (key: key);
  @override
  _GroupCard createState() => _GroupCard();
}



class _GroupCard extends State<GroupCard> {

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset('assets/images/cow_512_5.png'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            elevation: 5,
          ),
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Text("aaa"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            elevation: 5,
          ),
        ]
    );
  }
}
