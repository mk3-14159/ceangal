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
                  childAspectRatio: 0.88,
                ),
                delegate: SliverChildListDelegate(
                    [
                      GroupCard(),
                      GroupCard(),
                      GroupCard(),
                      GroupCard(),
                      GroupCard(),
                      GroupCard(),
                      GroupCard(),
                    ]
                )
            ),
          ],
        )
    );
  }
}
