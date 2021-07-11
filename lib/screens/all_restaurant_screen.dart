import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/widget/restaurant_staggered_gridview.dart';

class AllRestaurantScreen extends StatefulWidget {
  final AllRestaurantScreen allrestaurants;
  AllRestaurantScreen({this.allrestaurants});
  @override
  _AllRestaurantScreenState createState() => _AllRestaurantScreenState();
}

class _AllRestaurantScreenState extends State<AllRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants'),
        backgroundColor: Color(0xffADDFFF),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Eat. Drink. Love. ',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: RestaurantStaggeredGridview(),
          ),
        ],
      ),
    );
  }
}
