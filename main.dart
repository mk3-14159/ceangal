import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget{
  static const String _title = 'Ceangail NUIG';

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: _title,
      theme: ThemeData(fontFamily: 'SourceCodePro'),
      home: CeangailSocialWidget(),
    ); //MaterialApp
  }
}


class CeangailSocialWidget extends StatefulWidget{
  CeangailSocialWidget({Key key}) : super (key: key);

  @override
  _CeangailSocialWidget createState() => _CeangailSocialWidget();
}


class _CeangailSocialWidget extends State<CeangailSocialWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: RichText(
            text: TextSpan(
              style: TextStyle(
                height: 1, fontSize: 40,
              ),
              children : [
                TextSpan(
                  text: "Ceangail ",
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
      ),



      body: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded( //TOP HORIZONTAL CONTAINER
              flex: 2,
              child: Container(
                color: Colors.pink,
                child: Column(
                  children: <Widget>[
                    Text('Active Groups'),
                    Container(
                      child: Expanded(
                        child: Image(
                          image: AssetImage('assets/images/cow.jpg'),
                        ),
                      ),
                    )
                  ]
                )
              ),
            ),
            Expanded( // BOTTOM HORIZONTAL CONTAINER
              flex: 3,
              child: Container(
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded( //LHS VERTICAL-BOTTOM CONTAINER
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 15, 20),
                          color: Colors.cyan,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Image(
                                  image: AssetImage('assets/images/cheese.jpg')
                                ),
                              ),
                              SizedBox(height:15),
                              Expanded(
                                flex: 2,
                                child: Image(
                                    image: AssetImage('assets/images/druggo.png')
                                ),
                              ),
                            ],
                          )
                        )
                      ),
                      Expanded( //RHS VERTICAL-BOTTOM CONTAINER
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 10, 15, 20),
                          color: Colors.blueAccent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Image(
                                  image: AssetImage('assets/images/etin.png')
                                ),
                              ),
                              SizedBox(height:15),
                              Expanded(
                                flex: 2,
                                child: Image(
                                    image: AssetImage('assets/images/oran_cans.png')
                                ),
                              )

                            ],
                          )
                        )
                      )
                    ],
                  )
              )
            )
          ]
        )
      )



    );
  }
}