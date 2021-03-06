import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_travel_ui_starter/constants.dart';

import 'place_item.dart';

class PlaceStaggeredGridview extends StatelessWidget {
  const PlaceStaggeredGridview({
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
        itemCount: placeList.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        itemBuilder: (context, index) => PlaceItem(index),
      ),
    );
  }
}
