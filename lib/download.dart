import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DownloadPage extends StatelessWidget {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(   backgroundColor: Colors.black,
        body:  Container(
            alignment: FractionalOffset.topCenter,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        " Videos Downloaded ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 40),
                      Image(
                        image: AssetImage("assets/primevideo.kuruthi.jpg"),
                      ), SizedBox(height: 40), ElevatedButton(
                        onPressed: () {},
                        child: Text("click here"),
                      ),
                    ])));
  }
}
