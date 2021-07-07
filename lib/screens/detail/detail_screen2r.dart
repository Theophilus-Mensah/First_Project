import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/restaurant_model.dart';
// import 'package:flutter_travel_ui_starter/models/activity_model.dart';
// import 'package:flutter_travel_ui_starter/models/destination_model.dart';
import 'package:flutter_travel_ui_starter/screens/search_screen.dart';
import 'package:flutter_travel_ui_starter/screens/widget/about.dart';
import 'package:flutter_travel_ui_starter/screens/widget/place_and_name.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RestaurantDetails2 extends StatefulWidget {
  final Restaurant allrestaurantList;

  RestaurantDetails2({this.allrestaurantList});

  @override
  _RestaurantDetails2State createState() => _RestaurantDetails2State();
}

class _RestaurantDetails2State extends State<RestaurantDetails2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.allrestaurantList.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(widget.allrestaurantList.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          iconSize: 30.0,
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => SearchScreen())),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.allrestaurantList.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          widget.allrestaurantList.city,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                ),
              ),
            ],
          ),
          PlaceAndName(),
          About(),
        ],
      ),
    );
  }
}
