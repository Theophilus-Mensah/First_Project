import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/place.dart';
import 'package:flutter_travel_ui_starter/screens/detail/detail_screenR.dart';

class AllRestaurantItem extends StatelessWidget {
  final int index;

  const AllRestaurantItem(
    this.index, {
    Key key,
  }) : super(key: key);

  get allrestaurantlist => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RestaurantDetails();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.bottomLeft,
        height: allrestaurant[index].height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                allrestaurant[index].imageUrl,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                allrestaurant[index].title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                allrestaurant[index].subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
