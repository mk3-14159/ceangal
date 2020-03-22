import 'package:flutter/material.dart';
import 'like_card.dart';

class GetLikes extends StatefulWidget{
  GetLikes({Key key}) : super (key: key);
  @override
  _GetLikes createState() => _GetLikes();
}



class _GetLikes extends State<GetLikes> {

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
                  spacing: 16.0, // gap between adjacent chips
                  runSpacing: 2.0, // gap between lines
                  children: <Widget>[

                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                )
                            )
                        ),
                        alignment: Alignment.center,
                        child: Text.rich(
                          TextSpan(
                            text: "Today",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 24.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),


                    LikeCard(
                      firstName: "Ania",
                      timestamp: "Today at 5:10 pm",
                    ),
                    LikeCard(
                      firstName: "Kiki",
                      timestamp: "Today at 5:01 pm",
                    ),
                    LikeCard(
                      firstName: "Jason",
                      timestamp: "Today at 3:20 pm",
                    ),


                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                )
                            )
                        ),
                        alignment: Alignment.center,
                        child: Text.rich(
                          TextSpan(
                            text: "Yesterday",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 24.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),

                    LikeCard(
                      firstName: "Grace",
                      timestamp: "Yesterday at 8:40 pm",
                    ),
                    LikeCard(
                      firstName: "Jeremy",
                      timestamp: "Yesterday at 6:10 pm",
                    ),
                    LikeCard(
                      firstName: "jenny",
                      timestamp: "Yesterday at 1:10 pm",
                    ),
                    LikeCard(
                      firstName: "Sarah",
                      timestamp: "Yesterday at 12:10 pm",
                    ),


                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                )
                            )
                        ),
                        alignment: Alignment.center,
                        child: Text.rich(
                          TextSpan(
                            text: "Last week",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 24.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    LikeCard(
                      firstName: "Kyle",
                      timestamp: "Last week",
                    ),
                    LikeCard(
                      firstName: "Titi",
                      timestamp: "Last week",
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
