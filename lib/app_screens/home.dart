import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0,top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text(
                      "Air UG",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.lightGreen
                      )),
                  ),
                  Expanded(child:Text(
                    "From Uganda to Kenya",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.lightGreen
                    ),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text(
                      "Air Tz",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.lightGreen
                      )),
                  ),
                  Expanded(child:Text(
                    "From Libya to Rwanda",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.lightGreen
                    ),
                  )),
                ],//<widget>[]
              ),
            FlightImageAsset(),
            FlightBookButton()
            ],
          )
      ),
    );
  }
}
//Image assets
class FlightImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =  AssetImage('images/flight.png');
    Image image = Image(image: assetImage, width: 200.0, height: 180.0);
    return Container(child: image,);
  }
}
//Raised button
class FlightBookButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: ElevatedButton(//u can even use RaisedButton though its an old widget
          color: Colors.deepOrange,
          child: Text(
            "Book Your Flight",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700
            ),
          ),
          elevation: 7.0,
          onPressed: () => bookFlight(context),
          ),
    );
  }
  // ALERTDIALOG
void bookFlight(BuildContext context){
  var alertDialog = AlertDialog(
    title: Text("Flight Booked Successfully"),
    content: Text("Have a pleasant flight"),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) => alertDialog,
    );
  }
}