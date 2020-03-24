import 'package:flutter/material.dart';

import './constants.dart';
import '../models/image_card_model.dart';
import './contest_tile.dart';
import './image_tile.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount: feeds.length,
          itemBuilder: (context, index) {
            if (feeds[index] is ImageCardModel)
              return ImageTile(feeds[index]);
            else
              return ContestTile(feeds[index]);
          },
        ));
  }
}
