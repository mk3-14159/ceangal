import 'package:flutter/material.dart';
import 'active_person.dart';

class GetActives extends StatefulWidget{
  GetActives({Key key}) : super (key: key);
  @override
  _GetActives createState() => _GetActives();
}



class _GetActives extends State<GetActives> {

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ActiveCard(
              personsName: "Matt",
            ),
            ActiveCard(
              personsName: "Ji Eun",
            ),
            ActiveCard(
              personsName: "Nala",
            ),
            ActiveCard(
              personsName: "Evan",
            ),
            ActiveCard(
              personsName: "Emma",
            ),
            ActiveCard(
              personsName: "Javaris jamar javarison-lamar",
            ),
          ],
        )
    );
  }
}
