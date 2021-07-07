import 'package:flutter/material.dart';

import 'widget/place_staggered_gridview.dart';

class AllDestinationScreen extends StatefulWidget {
  final AllDestinationScreen alldestinations;
  AllDestinationScreen({this.alldestinations});
  @override
  _AllDestinationScreenState createState() => _AllDestinationScreenState();
}

class _AllDestinationScreenState extends State<AllDestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist Sites'),
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
              'Explore the Ghana with us',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: PlaceStaggeredGridview(),
          )
        ],
      ),
    );
  }
}
