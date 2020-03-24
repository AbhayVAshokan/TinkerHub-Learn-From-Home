import 'package:flutter/material.dart';

import '../models/contest_card_model.dart';
import './constants.dart';

class ContestTile extends StatelessWidget {
  final ContestCardModel contestData;

  ContestTile(this.contestData);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: emphasisColor,
          blurRadius: 10,
          offset: Offset(0, 20.0),
        ),
      ]),
      width: double.infinity,
      height: isLandscape
          ? (mediaQuery.size.width - 300) / 1.6
          : (mediaQuery.size.width - 60) / 1.6,
      margin: EdgeInsets.only(
        bottom: 20.0,
        left: isLandscape ? 150 : 30.0,
        right: isLandscape ? 150 : 30.0,
      ),
      child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.notifications,
                  color: textColor,
                  size: 30.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Contest: ',
                    style: TextStyle(
                        color: textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.75),
                    children: [
                      TextSpan(
                        text: '\'${contestData.contestName}\'',
                        style: TextStyle(
                          color: headerColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  contestData.time,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70, right: 20),
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: contestData.longDescription + '\nPrize pool over ',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.75),
                  children: [
                    TextSpan(
                      text: '\$${contestData.prize}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70, top: 10, right: 20, bottom: 20),
            child: Row(
              
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(contestData.competitor1),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundImage:
                      AssetImage('lib/assets/images/sundar_pichai.jpeg'),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: secondarybgcolor,
                  child: Text('50+'),
                ),
                SizedBox(width: 5),
                Text('competitors', style: TextStyle(color: textColor, letterSpacing: 0.75, fontWeight: FontWeight.w600, fontSize: 13),),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
