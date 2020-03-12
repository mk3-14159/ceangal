import 'package:flutter/material.dart';

class GroupCard extends StatefulWidget{
  final String groupName;
  final String imageUrl;
  final int currentMembers;
  final int maxMembers;
  const GroupCard({Key key, this.groupName, this.imageUrl, this.currentMembers, this.maxMembers}) : super (key: key);

  @override
  _GroupCard createState() => _GroupCard();
}



class _GroupCard extends State<GroupCard> {
  int currentMemberCount;
  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(widget.imageUrl),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "${widget.groupName}\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black,
                        fontFamily: "Roboto",
                      ),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.person,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: "${(widget.currentMembers).toString()} / ${(widget.maxMembers).toString()}",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                  style: TextStyle(
                    fontFamily: "Roboto",
                  )
                )
              ),
            ),
          ],
        ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      elevation: 5,
    );
  }
}
