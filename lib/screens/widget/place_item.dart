import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/constants.dart';
import 'package:flutter_travel_ui_starter/screens/detail/detail_screen.dart';

class PlaceItem extends StatelessWidget {
  final int index;

  const PlaceItem(
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
              return DetailScreen();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.bottomLeft,
        height: placeList[index].height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                placeList[index].imageUrl,
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
                placeList[index].title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                placeList[index].subtitle,
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
