import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/widget/hotel_staggered_gridview.dart';

class AllHotelScreen extends StatefulWidget {
  final AllHotelScreen allhotels;
  AllHotelScreen({this.allhotels});
  @override
  _AllHotelScreenState createState() => _AllHotelScreenState();
}

class _AllHotelScreenState extends State<AllHotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotels'),
        backgroundColor: Color(0xffADDFFF),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Change Your View & Relax.',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: HotelStaggeredGridview(),
          ),
        ],
      ),
    );
  }
}
