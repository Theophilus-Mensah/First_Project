import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/constants.dart';
import 'package:flutter_travel_ui_starter/screens/detail/detail_screenR.dart';

class AllRestaurantItem extends StatelessWidget {
  final int index;

  const AllRestaurantItem(
    this.index, {
    Key key,
  }) : super(key: key);

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
        height: allrestaurantlist[index].height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                allrestaurantlist[index].imageUrl,
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
                allrestaurantlist[index].title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                allrestaurantlist[index].subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
