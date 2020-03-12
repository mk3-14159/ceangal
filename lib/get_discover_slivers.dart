import 'package:flutter/material.dart';
import 'discover_group_card.dart';

class DiscoverSlivers extends StatefulWidget{
  DiscoverSlivers({Key key}) : super (key: key);
  @override
  _DiscoverSlivers createState() => _DiscoverSlivers();
}



class _DiscoverSlivers extends State<DiscoverSlivers> {

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: 0.80,
                ),
                delegate: SliverChildListDelegate(
                    [
                      GroupCard(groupName: "Electric Tonight?", imageUrl: "assets/images/cow_512_5.png", currentMembers: 12, maxMembers: 15,),
                      GroupCard(groupName: "LGBTQ", imageUrl: "assets/images/cow_512_1.png", currentMembers: 123, maxMembers: 123),
                      GroupCard(groupName: "Girl's Night Out", imageUrl: "assets/images/cow_512_2.png", currentMembers: 6, maxMembers: 8),
                      GroupCard(groupName: "Roisin Dubh Trad Night", imageUrl: "assets/images/cow_512_3.png", currentMembers: 20, maxMembers: 23),
                      GroupCard(groupName: "eating", imageUrl: "assets/images/cow_512_4.png", currentMembers: 12, maxMembers: 15),
                      GroupCard(groupName: "sleep", imageUrl: "assets/images/cow_512_5.png", currentMembers: 11, maxMembers: 18),
                      GroupCard(groupName: "cow party", imageUrl: "assets/images/cow_512_6.png", currentMembers: 300, maxMembers: 40000),
                    ]
                )
            ),
          ],
        )
    );
  }
}
