
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTabPage extends StatelessWidget{
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
      Container(
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [ CarouselSlider(
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
    Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Row(
    children:[
    Expanded(
    child: Container(
    child: (
    Container(
    padding: EdgeInsets.all(10),
    child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Continue Watching',
                style: TextStyle(color: Colors.white, fontSize: 18),
                textDirection:TextDirection.ltr,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 10,
                width: 30,
                child: Image(image: AssetImage("asset/primevideo.kuruthi.jpg")),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Container(
                    padding: EdgeInsets.all(10),
                    height: 300,
                    width: 300,
                    child: Image(image: AssetImage("assets/sarpattai.jpg")),
                  ),
                ),
              ),
              Text(
                'Sports TV and MOVIES',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Container(
                    padding: EdgeInsets.all(10),
                    height: 300,
                    width: 300,
                    child: Image(image: AssetImage("assets/primevideo.kuruthi.jpg")),
                  ),
                ),
              ),
              Text(
                'Watch in ur Languages',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Container(
                    padding: EdgeInsets.all(10),
                    height: 300,
                    width: 300,
                    child: Image(image: AssetImage("assets/primevideo.kuruthi.jpg")),
                  ),
                ),
              ),
            ])))))])])]))]);
  }}
