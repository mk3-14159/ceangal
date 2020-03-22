import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dating/get_connections.dart';
import 'dating/get_actives.dart';

class DatingPage extends StatefulWidget{

  const DatingPage({Key key}) : super (key: key);

  @override
  _DatingPage createState() => _DatingPage();
}



class _DatingPage extends State<DatingPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: "Active Users",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: GetActives()
            ),

            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    )
                  )
                ),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: "Connections",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),


            Expanded(
              flex: 6,
              child: GetConnections()
            )
          ],
        ),
      ),



    );


  }
}
