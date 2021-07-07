import 'package:flutter_travel_ui_starter/models/activity_model.dart';

class Destination {
  String imageUrl;
  String name;
  String city;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.name,
    this.city,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/holidayinn.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/movenpick.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/theroyalsenchi2.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/lakevolta3.jpg',
      name: 'Lake Volta',
      description:
          'Visit Lake Volta for an amazing and unforgettable adventure.',
      activities: activities,
      city: 'Oti'),
  Destination(
      imageUrl: 'assets/images/nzulezo2.jpg',
      name: 'Nzulezo',
      description: 'Visit Nzulezo for an amazing and unforgettable adventure.',
      activities: activities,
      city: 'Western'),
  Destination(
      imageUrl: 'assets/images/WechiauHippo1.jpg',
      name: 'Wechiau Hippo Sanctuary',
      description:
          'Visit Wechiau Hippo Sanctuary for an amazing and unforgettable adventure.',
      activities: activities,
      city: 'Upper West'),
  Destination(
      imageUrl: 'assets/images/crocodilepond1.jpg',
      name: 'Sacred Crocodile pond',
      description:
          'Visit the Sacred Crocodile Pond for an amazing and unforgettable adventure.',
      activities: activities,
      city: 'Upper East'),
  Destination(
      imageUrl: 'assets/images/digyapark1.jpg',
      name: 'Digya National Park',
      description:
          'Visit Digya National Park for an amazing and unforgettable adventure.',
      activities: activities,
      city: 'Bono East'),
];
