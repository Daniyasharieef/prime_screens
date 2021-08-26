import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<SearchPage> {
  List<String> category = [
    "Drama",
    "Action and Adventure",
    "Romance",
    "Comedy",
    "Thriller",
    "Horror"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueGrey,title: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1)),
            filled: true,
            fillColor: Colors.blueGrey,
            hintText: "search Tv and Movies....",
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.mic),
            enabled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide.none,
            )),
      ),),
      extendBody: true,
      backgroundColor: Colors.black45,
      body:  SingleChildScrollView(child:Column(
        children: <Widget>[
          Text("Languages"),
          ListView.builder(
            scrollDirection: Axis.vertical,
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, position) {
              return ListTile(
                title: Text("Movies",),
              );
            },
            itemCount:5,
          ),Text("Languages"),
          Padding(padding: EdgeInsets.all(10)),
          GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 40,crossAxisCount: MediaQuery.of(context).size.width <= 400.0 ? 3 :
              MediaQuery.of(context).size.width >= 1000.0 ? 5 : 4,
                crossAxisSpacing: 50,
                childAspectRatio: (3 / 2),
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text('TV'),
                  ),
                );
              }),
          ListView.builder(
            scrollDirection: Axis.vertical,
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, position) {
              return ListTile(
                title: Text("Movies",),
              );
            },
            itemCount:5,
          ),
          Text("Genres"),  ListView.builder(
            scrollDirection: Axis.vertical,
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, position) {
              return ListTile(
                title: Text("Movies",),
              );
            },
            itemCount:5,
          ),
        ],
      ),
    )
    );
  }
}
