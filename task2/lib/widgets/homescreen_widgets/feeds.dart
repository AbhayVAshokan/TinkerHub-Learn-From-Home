import 'package:flutter/material.dart';

import 'package:task2/models/image_card_model.dart';
import 'package:task2/screens/profilescreen.dart';
import '../constants.dart';
import './contest_tile.dart';
import './image_tile.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card;

    return Expanded(
        child: ListView.builder(
      itemCount: feeds.length,
      itemBuilder: (context, index) {
        if (feeds[index] is ImageCardModel)
          card = GestureDetector(
            child: ImageTile(feeds[index]),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            ),
          );
        else
          card = ContestTile(feeds[index]);

        return card;
      },
    ));
  }
}
