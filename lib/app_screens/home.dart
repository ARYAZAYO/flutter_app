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
            FlightImageAsset()
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
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(child: image,);
  }
}