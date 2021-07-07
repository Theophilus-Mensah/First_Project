import 'package:flutter/material.dart';

class AboutH extends StatelessWidget {
  const AboutH({
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
            'Mövenpick Ambassador Hotel Accra is a 10-minute walk from Accra National Museum. It features luxurious accommodations, a business center, an outdoor swimming pool and wellness center. Free Wi-Fi is available in all areas. All air-conditioned units offer a desk with flat-screen TV.',
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
