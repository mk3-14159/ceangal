import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget{

  const TopAppBar({Key key}) : super (key: key);

  @override
  _TopAppBar createState() => _TopAppBar();
}



class _TopAppBar extends State<TopAppBar> {



  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
          text: TextSpan(
              style: TextStyle(
                height: 1, fontSize: 40,
              ),
              children : [
                TextSpan(
                  text: "Ceangal ",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text: "NUIG",
                    style: TextStyle(
                      color: const Color(0xFFFF0088),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,)
                ),
              ]
          )
      ),
      centerTitle: true,
      backgroundColor: const Color(0xFF16E3B7),
    );
  }
}
