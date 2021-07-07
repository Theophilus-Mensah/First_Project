import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/detail/detail_screen.dart';

class SearchScreen extends StatefulWidget {
  // SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSearching = false;
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? Text('Search')
            : TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search), hintText: 'search here....'),
              ),
        centerTitle: true,
        actions: [
          isSearching
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      this.isSearching = !isSearching;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      this.isSearching = !isSearching;
                    });
                  },
                )
        ],
        backgroundColor: Color(0xffADDFFF),
        elevation: 10,
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future:
                DefaultAssetBundle.of(context).loadString('data/hotels.json'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              var mydata = jsonDecode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Color(0xFF9AFEFF),
                    child: GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Place:' + mydata[index]['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text('City:' + mydata[index]['city']),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailScreen(),
                              fullscreenDialog: true)),
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
