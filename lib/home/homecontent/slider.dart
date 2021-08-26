import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SliderPageState();
  }
}
  class SliderPageState extends State<SliderPage>{
  @override
  Widget build(BuildContext context) {
  print('neha');
  return Scaffold(
      body :
    CarouselSlider(
      items: [
        Expanded(child:
        Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration:BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage("assets/primevideo.kuruthi.jpg",),),
          )
        ),)],

      options: CarouselOptions(
        autoPlay: true,)),

       );}
}
