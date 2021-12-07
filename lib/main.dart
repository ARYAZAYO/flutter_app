import 'package:flutter/material.dart';
// how to use Stateful Widgets

void main(){

  runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Stateful App Example ",
     home: FavoriteCity(),
   )
   );
}
//create a class that extends a "StatefulWidget"
//that returns a State in "createState()"

class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {

  String nameCity = " ";
  @override
  Widget build(BuildContext context) {

    debugPrint("Favorite City widget is creted");

    return Scaffold(
      appBar:  AppBar(
        title:  Text(" Stateful App Example"),
      ),
      body:  Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput){
                setState(() {
                  debugPrint("set State is called, this tells framework to redraw the FavCuty widget");
                  nameCity = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
              "Your best city is $nameCity",
              style: TextStyle(fontSize: 20.0),
            )),
          ],
        ),
      ),
    );
  }
}