import 'package:flutter_travel_ui_starter/models/activity_model.dart';

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  List<Activity> activities;

  Hotel({this.imageUrl, this.name, this.address, this.price, this.activities});
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/movenpick.jpg',
    name: 'Movenpick Ambassador Hotel ',
    address: 'Accra',
    price: 1560,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'assets/images/goldentulipkumasicity.jpg',
    name: 'Golden Tulip Kumasi City',
    address: 'Ashanti',
    price: 651,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'assets/images/holidayinn.jpg',
    name: 'Holiday Inn',
    address: 'Accra',
    price: 773,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'assets/images/kempinskihotel.jpg',
    name: 'Kempinski Hotel',
    address: 'Accra',
    price: 1780,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'assets/images/labadibeachhotel.jpg',
    name: 'Labadi Beach Hotel',
    address: 'Accra',
    price: 1904,
    activities: activities,
  ),
];
