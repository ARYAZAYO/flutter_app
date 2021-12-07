import 'package:flutter/material.dart';
import './app_screens/home.dart   ';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Long List"),),
      body: getListView(),
      //FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint("FAB Clicked");
        },
        child: Icon(Icons.add),
        tooltip: 'Add One More Item',
    ),
    ),
  ));
}
//snackBar
void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
      content: Text("You Just Tapped $item"),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          debugPrint('Performing dummy UNDO operation');
        },
      ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

//dynamic listview
List<String> getListElements(){
  var items = List<String>.generate(1000,(counter) => "Item $counter");
  return items;
}
//most important part that's commonly used
Widget getListView(){

  var listItems = getListElements();

  var listview = ListView.builder(
    itemBuilder: (context, index){
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: (){
          showSnackBar(context, listItems[index]);
        },
      );
    }
  );
  return listview;
}