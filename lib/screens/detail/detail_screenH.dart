import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/place.dart';
import 'package:flutter_travel_ui_starter/screens/widget/aboutH.dart';
import 'package:flutter_travel_ui_starter/screens/widget/my_headerH.dart';
import 'package:flutter_travel_ui_starter/screens/widget/place_and_nameH.dart';

class HotelDetails extends StatefulWidget {
  final AllHotel allhotellists;

  HotelDetails({this.allhotellists});
  @override
  _HotelDetailsState createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyHeaderH(),
                PlaceAndNameH(),
                SizedBox(
                  height: 9.0,
                ),
                AboutH(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
