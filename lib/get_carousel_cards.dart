import 'carousel_image_cards.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GetCarousel extends StatefulWidget{
  GetCarousel({Key key}) : super (key: key);
  @override
  _GetCarousel createState() => _GetCarousel();
}



class _GetCarousel extends State<GetCarousel> {
  int _currentCarouselImg = 0;
  List imgList = [
    CarouselCard(imageUrl: "assets/images/cow_512_6.png", groupName: "Larry's Lawnmowers", memberCount: 35),
    CarouselCard(imageUrl: "assets/images/cow_512_5.png", groupName: "International Friends", memberCount: 402),
    CarouselCard(imageUrl: "assets/images/cow_512_4.png", groupName: "Daves Dance", memberCount: 78),
  ];
  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    /*return Stack(
        children: [
          CarouselSlider(
            items: child,
            autoPlay: true,
            aspectRatio: 2.0,
            onPageChangedCallback: (index) {
              setState(() {
                _currentCarouselImg = index;
              });
            },
          ),
          Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentCarouselImg == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
                    ),
                  );
                }),
              )
          )
        ]
    );*/

    return Stack(
      children: [
        CarouselSlider(
        items: [
          CarouselCard(imageUrl: "assets/images/cow_512_6.png", groupName: "Larry's Lawnmowers", memberCount: 35),
          CarouselCard(imageUrl: "assets/images/cow_512_5.png", groupName: "International Friends", memberCount: 402),
          CarouselCard(imageUrl: "assets/images/cow_512_4.png", groupName: "Daves Dance", memberCount: 78),
        ],
        initialPage: 1,
        aspectRatio: 16/9,
        autoPlay: false,
        viewportFraction: 1.0,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        ),

      ],
    );
  }
}
