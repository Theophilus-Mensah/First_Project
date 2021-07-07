import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/restaurant_model.dart';
import 'package:flutter_travel_ui_starter/screens/all_restaurant_screen.dart';
import 'package:flutter_travel_ui_starter/screens/detail/detail_screen2r.dart';
// import 'package:flutter_travel_ui_starter/screens/detail/detail_screenR.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RestaurantPlace extends StatelessWidget {
  const RestaurantPlace({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Luxurious Restaurants',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
          GestureDetector(
            child: Text(
              'See All',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AllRestaurantScreen(
                  allrestaurants: AllRestaurantScreen(),
                ),
              ),
            ),
          ),
        ]),
      ),
      Container(
        height: 300.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: restaurants.length,
          itemBuilder: (BuildContext context, int index) {
            Restaurant restaurant = restaurants[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => RestaurantDetails2(
                            allrestaurantList: restaurant,
                          ))),
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: 210.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 15.0,
                      child: Container(
                        height: 120.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurant.description,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular((20.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0)
                        ],
                      ),
                      child: Stack(
                        children: [
                          Hero(
                            tag: restaurant.city,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 180.0,
                                width: 200.0,
                                image: AssetImage(restaurant.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10.0,
                            bottom: 10.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  restaurant.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.locationArrow,
                                      size: 10.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(restaurant.city,
                                        style: TextStyle(
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      )
    ]);
  }
}
