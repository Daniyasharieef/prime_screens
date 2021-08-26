
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/home_page.dart';
import 'package:untitled8/search.dart';
import 'download.dart';
import 'my_stuff.dart';


void main(){
  runApp(MaterialApp(
    home: MaterialApp(home: MyApp()),
  ));}

  class MyApp extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
      return _MyAppState();
    }
  }
class _MyAppState extends State<StatefulWidget>{
  int index=0;
  var whichPage = [
    HomePage(),
    SearchPage(),
    DownloadPage(),
    MyStuffPage(),
  ];
  @override
  Widget build(BuildContext context) {
    print(index);
    print("Asd");
    return Scaffold(
      extendBody: true,
      body: whichPage[index],
        bottomNavigationBar:BottomNavigationBar(
        currentIndex:index,
        items:[
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label:'Home',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.search),
              label:'Find',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.download),
            label:'Download',
            backgroundColor: Colors.black,
          ),BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label:'My stuff',
              backgroundColor: Colors.black
          ),
        ],
        onTap: (ind){
          index = ind;
          setState(() {
          });
        },
      ),

    );
    }}
