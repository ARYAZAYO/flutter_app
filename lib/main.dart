import 'package:flutter/material.dart';
import './app_screens/home.dart   ';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI list view",
    home: Scaffold(
      appBar: AppBar(title: Text("Basic list view"),),
     body: getListview(),
    ),
  ));
}
//Basic listview is for few list items
//donot use it for large number of items since it is not memory efficient
Widget getListview(){
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view !"),
        trailing: Icon(Icons.wb_sunny),
        onTap:  () {
          debugPrint("Landascape tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("windows"),
        onTap: (){
          debugPrint("click");
        },
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("phone"),
        onTap: (){
          debugPrint("Thanks");
        },
      ),
      Text("Yet another elements in list"),

      Container(color: Colors.red,height: 50.0,)
    ],
  );
  return listView;
}