import 'package:flutter/material.dart';
// import 'package:flutter_travel_ui_starter/constants.dart';
import 'package:flutter_travel_ui_starter/models/hotel_model.dart';
// import 'package:flutter_travel_ui_starter/models/place.dart';
import 'package:flutter_travel_ui_starter/screens/all_hotel_screen.dart';
import 'package:flutter_travel_ui_starter/screens/detail/detail_screen2h.dart';
// import 'package:flutter_travel_ui_starter/screens/detail/detail_screen.dart';
import 'package:flutter_travel_ui_starter/screens/detail/detail_screenH.dart';

class HotelPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => HotelDetails())),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Exclusive Hotels',
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            GestureDetector(
              child: Text(
                'See All',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AllHotelScreen(
                    allhotels: AllHotelScreen(),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => HotelDetails2(
                              allhotellists: hotel,
                            ))),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 120.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  hotel.name,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  hotel.address,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  '\$${hotel.price}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular((20.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0)
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 180.0,
                            width: 200.0,
                            image: AssetImage(hotel.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
