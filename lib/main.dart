import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title:  'Simple Interest Calculator App',
      home: SIForm(),
      theme:  ThemeData(
        scaffoldBackgroundColor: Colors.green,
        brightness: Brightness.light,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent
      ),
    )
  );
}

class SIForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm>{
  var _currencies = ['Shillings','Rupees','Dollars','Others'];
  //var _currentItemSelected = 'Shillings';
  final _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {

    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:  Text('Simple Interest Calculator UI'),
      ),

      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: Column(
        //child: ListView(
          children: <Widget>[
            getImageAsset(),
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
              keyboardType:TextInputType.number ,
              style: textStyle,
              decoration:  InputDecoration(
                labelText:  'Principal',
                hintText: 'Enter Principal e.g, 12000',
                labelStyle: textStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
              ),
            )),
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
              keyboardType:TextInputType.number ,
              style: textStyle,
              decoration:  InputDecoration(
                  labelText:  'Rate of Interest',
                  hintText: 'In Percent',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                      )
              ),
            )),

            Padding(
             padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
             child: Row(
             children: <Widget>[
               Expanded(child: TextField(
                 keyboardType:TextInputType.number,
                 style: textStyle,
                 decoration:  InputDecoration(
                     labelText:  'Term',
                     hintText: 'Time in years',
                     labelStyle: textStyle,
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5.0)
                     )
                 ),
               )),

               Container(width: _minimumPadding * 5,),

               Expanded(child: DropdownButton<String>(
                   items: _currencies.map((String value){
                     return DropdownMenuItem<String>(
                         value: value,
                         child: Text(value),
                     );
                   }).toList(),
                 value: 'Shillings',
                 onChanged: ( newValueSelected){
                 },
               ))
             ],
            )),
            Padding(
              padding: EdgeInsets.only(bottom: _minimumPadding,top: _minimumPadding),
              child: Row(children: [
                Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      textColor: Theme.of(context).primaryColorLight,
                      child:  Text('Calculate', textScaleFactor: 1.5),
                      onPressed: () {

                      },
                    ),
                ),
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).accentColor,
                          textColor:  Theme.of(context).primaryColorLight,
                          disabledTextColor: Theme.of(context).primaryColorDark,
                          child:  Text('Reset', textScaleFactor: 1.5,),
                          onPressed: () {

                          },
                          ),
                    ),
              ],
            ),),
            Padding(
              padding: EdgeInsets.all(_minimumPadding * 2),
              child: Text('Todo Text',style: textStyle),
            )
          ],
        ),
      ),
    );
  }
  Widget getImageAsset(){
    AssetImage assetImage = AssetImage('images/money1.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);

    return Container(child:  image,
      margin: EdgeInsets.all(_minimumPadding * 5),
    );
  }
}