import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/all_destination_screen.dart';
import 'package:flutter_travel_ui_starter/screens/all_hotel_screen.dart';
import 'package:flutter_travel_ui_starter/screens/all_restaurant_screen.dart';
import 'package:flutter_travel_ui_starter/screens/home_screen.dart';
import 'package:flutter_travel_ui_starter/screens/search_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navigation extends StatefulWidget {
  final Navigation navigation;
  Navigation({this.navigation});

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  List<Widget> _widgetoptions = [
    HomeScreen(),
    AllHotelScreen(),
    AllDestinationScreen(),
    AllRestaurantScreen(),
    SearchScreen()
  ];

  void _onItemIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetoptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                color: Colors.black38,
                size: 30.0,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bed,
                color: Colors.black38,
                size: 30.0,
              ),
              label: "hotels"),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.city,
                color: Colors.black38,
                size: 30.0,
              ),
              label: "sites"),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cocktail,
              color: Colors.black38,
              size: 30.0,
            ),
            label: 'restaurant',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black38,
              size: 30.0,
            ),
            label: 'search',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemIndex,
      ),
    );
  }
}
