
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTabPage extends StatelessWidget{
  int index=0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*2),
          child:
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                  items: [
                    Expanded(child:
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration:BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/primevideo.kuruthi.jpg",),),
                        )
                    ),)],
                  options: CarouselOptions(
                    autoPlay: true,)
              ),
              Text(
                  "Movies",
              textAlign:TextAlign.center),
              new Expanded(child:
              ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Container(
                  padding: EdgeInsets.all(10),
                  height: 300,
                  width: 300,
                  child: Image(image: AssetImage("assets/sarpattai.jpg")),
                ),
              )),
              Text(    "Continue watching",
                  textAlign: TextAlign.center,
                  ),
              new Expanded(child:
              ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Container(
                  padding: EdgeInsets.all(10),
                  height: 300,
                  width: 300,
                  child: Image(image: AssetImage("assets/sarpattai.jpg")),
                ),
              )),
              Text("Latest Movies",
              textAlign: TextAlign.center,
              textHeightBehavior: TextHeightBehavior(),),
              new Expanded(child:
              ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Container(
                  padding: EdgeInsets.all(5),
                  height: 300,
                  width: 300,
                  child: Image(image: AssetImage("assets/sarpattai.jpg")),
                ),
              )),

            ],
          ),
        )
    );
  } }
