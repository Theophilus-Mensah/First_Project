import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/widget/hotel_place.dart';
import 'package:flutter_travel_ui_starter/screens/widget/restaurant_place.dart';
import 'package:flutter_travel_ui_starter/screens/widget/destination_places.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffADDFFF),
        title: Text('Home'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text(
              'What would you like to see in Ghana?',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          DestinationPlace(),
          SizedBox(
            height: 20.0,
          ),
          HotelPlace(),
          SizedBox(
            height: 20.0,
          ),
          RestaurantPlace(),
        ],
      ),
    );
  }
}
