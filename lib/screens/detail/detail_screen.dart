import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/place.dart';

import 'package:flutter_travel_ui_starter/screens/widget/about.dart';
import 'package:flutter_travel_ui_starter/screens/widget/my_header.dart';
import 'package:flutter_travel_ui_starter/screens/widget/place_and_name.dart';

class DetailScreen extends StatefulWidget {
  final Place placeList;

  DetailScreen({this.placeList});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyHeader(),
                PlaceAndName(),
                SizedBox(
                  height: 9.0,
                ),
                About(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
