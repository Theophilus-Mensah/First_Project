import 'package:flutter/material.dart';

class AboutR extends StatefulWidget {
  AboutR({Key key}) : super(key: key);

  @override
  _AboutRState createState() => _AboutRState();
}

class _AboutRState extends State<AboutR> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Urban Grill on Main. Urban Grill on Main is a casual,'
              'sit-down restaurant in the heart of Newtown. Our hand-crafted '
              'burgers, Chef\'s special plated entrees, signature grilled mac ‘n cheese,'
              'lite bites, salads and desserts will satisfy any appetite.'
              'Check out our bar and covered patio. Open Wednesdays through Sundays'
              'for lunch or dinner.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
        ));
  }
}
