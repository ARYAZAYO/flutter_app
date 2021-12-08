import 'package:flutter/material.dart';
//how to use Stateful Widgets
//Drop menu item list
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

  String nameCity = "";
  var _currencies = ['Shillings','Rupees','Dollars', 'Others'];
  var _currentItemSelected = 'Shillings';

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
            DropdownButton<String>(

              items: _currencies.map((String dropDownStringItem){
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child:  Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: ( newValueSelected){
                // Your code to execute, when a menu item is selected from drop down
                _onDropDownItemSelected(newValueSelected!);
              },
              value: _currentItemSelected,
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
  void _onDropDownItemSelected(String newValueSelected){
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}