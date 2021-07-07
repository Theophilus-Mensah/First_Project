import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/constants.dart';

class MyHeaderR extends StatelessWidget {
  const MyHeaderR({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/urbangrill.jpg',
            height: 400,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 30,
            top: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: mBackgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: mSecondaryColor,
                  borderRadius: BorderRadius.circular(36)),
            ),
          ),
        ],
      ),
    );
  }
}
