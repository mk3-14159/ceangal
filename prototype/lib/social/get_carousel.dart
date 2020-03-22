import 'package:flutter/material.dart';
import 'carousel_cards.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GetCarousel extends StatefulWidget{
  GetCarousel({Key key}) : super (key: key);
  @override
  _GetCarousel createState() => _GetCarousel();
}



class _GetCarousel extends State<GetCarousel> {
  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {


    return Card(
      elevation: 5.0,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: CarouselSlider(
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
    );



  }
}
