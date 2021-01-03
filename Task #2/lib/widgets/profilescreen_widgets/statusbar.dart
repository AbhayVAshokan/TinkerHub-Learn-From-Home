import 'package:flutter/material.dart';

import '../constants.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Photos',
                style: TextStyle(
                    color: secondarybgcolor, fontSize: 15, letterSpacing: 0.75),
              ),
              Text(
                '235',
                style: TextStyle(
                  color: headerColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.75,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                'Followers',
                style: TextStyle(
                    color: secondarybgcolor, fontSize: 15, letterSpacing: 0.75),
              ),
              Text(
                '2232',
                style: TextStyle(
                  color: headerColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.75,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                'Follows',
                style: TextStyle(
                    color: secondarybgcolor, fontSize: 15, letterSpacing: 0.75),
              ),
              Text(
                '351',
                style: TextStyle(
                  color: headerColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.75,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
