import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/place.dart';
import 'package:flutter_travel_ui_starter/screens/widget/aboutR.dart';
import 'package:flutter_travel_ui_starter/screens/widget/my_headerR.dart';
import 'package:flutter_travel_ui_starter/screens/widget/place_and_nameR.dart';

class RestaurantDetails extends StatefulWidget {
  final AllRestaurant allrestaurantList;

  RestaurantDetails({this.allrestaurantList});

  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyHeaderR(),
                PlaceAndNameR(),
                SizedBox(
                  height: 9.0,
                ),
                AboutR(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
