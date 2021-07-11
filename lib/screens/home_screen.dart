import 'package:flutter/material.dart';
// import 'package:flutter_travel_ui_starter/models/bottomnavbar.dart';
import 'package:flutter_travel_ui_starter/screens/google_map.dart';
import 'package:flutter_travel_ui_starter/screens/widget/hotel_place.dart';
import 'package:flutter_travel_ui_starter/screens/widget/restaurant_place.dart';
import 'package:flutter_travel_ui_starter/screens/widget/destination_places.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _launchUrl = "https://www.visitghana.com";

  Future<void> _launchedInApp(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: true,
          forceWebView: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffADDFFF),
        title: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/tourismauthority_logo.jpg',
                height: 50,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                width: 100,
              ),
              Text('Home')
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text(
              'What would you like to see in Ghana?',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 150.0,
              child: GestureDetector(
                child: Image.asset('assets/images/coronabanner.png'),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => GoogleMaps())),
              )),
          SizedBox(
            height: 65.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Not wearing a face-covering in public could result in a fine of"
                  " 12,000 to 60,000 cedis, and/or a prison sentence of four to ten years."),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          DestinationPlace(),
          SizedBox(
            height: 20.0,
          ),
          HotelPlace(),
          SizedBox(
            height: 20.0,
          ),
          RestaurantPlace(),
          ElevatedButton(
            child: const Text(
              'visit our website: visitGhana.com',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {
              _launchedInApp(_launchUrl);
            },
          ),
          SizedBox(
            child: GestureDetector(
              child: Image.asset(
                'assets/images/tourismauthority_logo.jpg',
                height: 35,
                fit: BoxFit.fitHeight,
              ),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => GoogleMaps())),
            ),
          ),
        ],
      ),
    );
  }
}
