import 'package:flutter/material.dart';
import 'menu_bar.dart';
import 'social/get_carousel.dart';
import 'social/get_groups.dart';

class CeangalSocialWidget extends StatefulWidget{
  CeangalSocialWidget({Key key}) : super (key: key);
  @override
  _CeangalSocialWidget createState() => _CeangalSocialWidget();
}




class _CeangalSocialWidget extends State<CeangalSocialWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                    child: RichText(
                      text: TextSpan(
                        text: "Active Groups\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 24.0,
                          color: Colors.grey,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  )
                ),

                Expanded( //TOP HORIZONTAL CONTAINER
                  flex: 5,
                  child: GetCarousel(),
                ),

                Expanded( // BOTTOM HORIZONTAL CONTAINER
                    flex: 7,
                    child: DiscoverSlivers()
                )
              ]
          )
      ),



    );
  }
}






