import 'package:flutter/material.dart';
import 'connection_card.dart';

class GetConnections extends StatefulWidget{
  GetConnections({Key key}) : super (key: key);
  @override
  _GetConnections createState() => _GetConnections();
}



class _GetConnections extends State<GetConnections> {

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
      return CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 8.0, // gap between adjacent chips
                    runSpacing: 4.0, // gap between lines
                    children: <Widget>[
                        ConnectionCard(
                          firstName: "Terry",
                          description: "Terry is my name, bodybuilding is my game!",
                        ),
                        ConnectionCard(
                          firstName: "Lucy",
                          description: "Leaving a little bit of sparkle everywhere I go",
                        ),
                        ConnectionCard(
                          firstName: "Grace",
                          description: "BIS 2021",
                        ),
                        ConnectionCard(
                          firstName: "MK",
                          description: "Im buff AF broh",
                        ),
                        ConnectionCard(
                          firstName: "Bessie",
                          description: "mooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
                        ),
                        ConnectionCard(
                          firstName: "Jeremy",
                          description: "Straight boolin B-)",
                        ),
                        ConnectionCard(
                          firstName: "Jenkins",
                          description: "im all about that fast life",
                        ),
                        ConnectionCard(
                          firstName: "Joe",
                          description: "farming is life",
                        ),
                        ConnectionCard(
                          firstName: "Jill",
                          description: "i yeet that out the window",
                        ),

                    ],
                  )
                ],
              )
            ),
        ],
    );
  }



}
