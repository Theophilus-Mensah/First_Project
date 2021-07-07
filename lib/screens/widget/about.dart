import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

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
            'The Umbrella Rock is a rock found at the site of the Boti Falls'
            'in Yilo Krobo District, Ghana. As the name implies, the overhang'
            'on the top is large enough to cover 12 to 15 people at once.'
            'Even though the pivot on which the top rock lies on might seem'
            'small, it\'s very strong.'
            'Yearly, many Tourists travel to Boti Falls for its natural beauty,'
            'and the umbrella rock is visible through much of the trek to the '
            'falls. Also it is one of the windows backgrounds, so many people see it.',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
