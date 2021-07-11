import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class GoogleMaps extends StatefulWidget {
  GoogleMaps({Key key}) : super(key: key);

  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  // Future<void> _launched;
  String _launchUrl = "https://www.googlemaps.com";
  String _launchCovid = "https://visitghana.com/coronavirus-alert/";

  Future<void> _launchedInMaps(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: true,
          forceWebView: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {
      throw 'could not launch $url';
    }
  }

  Future<void> _launchedInCovid(String url) async {
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
        title: Text('Details'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/coronabanner.png'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'As part of measures to help inform the larger traveling public,'
                      ' the Ghana Tourism Authority has launched this page to provide information to'
                      ' all on the COVID-19 infection and spread.'),
                ),
                Center(
                  child: ElevatedButton(
                      child: const Text('see Ghana\'s COVID protocols'),
                      onPressed: () {
                        _launchedInCovid(_launchCovid);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Where do you want to see in Ghana, do you want to find your way around?'),
                ),
                SizedBox(
                  height: 100,
                  child: Container(
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/WaNaa2.jpg'),
                          radius: 50,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/umbrellarock1.jpg'),
                          radius: 50,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/movenpick1.jpg'),
                          radius: 50,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/nzulezo2.jpg'),
                          radius: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchedInMaps(_launchUrl);
                  },
                  child: const Text('search for locations on map'),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Container(
                    height: 500,
                    color: Colors.black12,
                    child: Column(
                      children: [
                        Text(
                          'Contact Us',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'GHANA TOURISM AUTHORITY - HEAD OFFICE',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.locationArrow,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('P. O. BOX GP 3106, Accra, Ghana')
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(FontAwesomeIcons.phone),
                              SizedBox(
                                width: 20,
                              ),
                              Text('+233 307007100')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(FontAwesomeIcons.mailBulk),
                              SizedBox(
                                width: 20,
                              ),
                              Text('info@visitghana.com')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(FontAwesomeIcons.blenderPhone),
                              SizedBox(
                                width: 20,
                              ),
                              Text('call center: 0307007100')
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/tourismauthority_logo.jpg',
                          height: 150,
                        ),
                        Text(
                          'Culture-Warmth-Rhythm',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
