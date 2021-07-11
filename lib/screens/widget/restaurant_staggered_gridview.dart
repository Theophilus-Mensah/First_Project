import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_travel_ui_starter/constants.dart';
import 'package:flutter_travel_ui_starter/models/place.dart';
import 'package:flutter_travel_ui_starter/screens/widget/restaurant_item.dart';

class RestaurantStaggeredGridview extends StatelessWidget {
  const RestaurantStaggeredGridview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: StaggeredGridView.countBuilder(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 4,
        itemCount: allrestaurant.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        itemBuilder: (context, index) => AllRestaurantItem(index),
      ),
    );
  }
}
