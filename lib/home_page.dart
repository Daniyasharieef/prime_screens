import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/home/home.dart';
import 'package:untitled8/home/kids.dart';
import 'package:untitled8/home/tv_shows.dart';

import 'home/movies.dart';


class HomePage extends StatelessWidget{
  int index=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(child:Text("Home"),),
                Tab( child:Text("Tv Shows"),),
                Tab(child:Text("Movies"),),
                Tab(child:Text("Kids"),),
              ],
            ),
            backgroundColor: Colors.black,
            title: const Text('Prime Video'),
          ),
          body:  TabBarView(
            children: [
              HomeTabPage(),
              TVTabPage(),
              MoviesTabPage(),
              KidsTabPage(),

            ],
          ),
        ),
      ),);
  }}

