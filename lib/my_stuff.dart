import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStuffPage extends StatelessWidget {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text('WatchList'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
          ],
        ),extendBody: true,
        body: Container(
          child: Row(
            children: [
              Text(
                "   1 Video",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),SizedBox(width:20,),
              Image( width: 80,
                height:70,image: AssetImage("assets/sarpattai.jpg"), )
              ,SizedBox(width:20,)
,              Text(
                "  Download pending ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child:
                      ElevatedButton(onPressed: () {}, child: Text(' Filter'))),
            ],
          ),
        ));
  }
}
