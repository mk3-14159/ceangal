import 'package:flutter/material.dart';
import 'pfp_card.dart';
import 'profile_text.dart';


class GetProfile extends StatefulWidget{
  GetProfile({Key key}) : super (key: key);
  @override
  _GetProfile createState() => _GetProfile();
}



class _GetProfile extends State<GetProfile> {



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ProfilePictureCard(imageUrl: 'assets/images/fat_cow.jpg'),
            ProfileText(
              firstName: "Andrew",
              age: "23",
              description: "Life's too short to be vengeful or malicious",
            ),
          ],
        )
      ),
    );
  }
}
