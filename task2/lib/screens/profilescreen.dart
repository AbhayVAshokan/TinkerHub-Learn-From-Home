import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/constants.dart';
import 'package:task2/widgets/profilescreen_widgets/bio.dart';
import 'package:task2/widgets/profilescreen_widgets/statusbar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    final _topBar = [
      SizedBox(
        height: mediaQuery.padding.top,
      ),
      isLandscape
          ? Container()
          : Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_backspace,
                      size: 30.0,
                      color: textColor,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 30.0,
                      color: textColor,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
    ];

    final _activityBar = Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.only(left: 20.0),
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Activity',
              style: TextStyle(
                color: secondarybgcolor,
                fontSize: 22.0,
                letterSpacing: 0.75,
                fontWeight: FontWeight.w500,
              ),
            ),
            CircleAvatar(
              radius: 15.0,
              child: Text(
                '+2',
                style: TextStyle(
                  backgroundColor: secondarybgcolor,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: secondarybgcolor,
            ),
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 5.0,
            ),
            CircleAvatar(
              backgroundColor: secondarybgcolor,
              radius: 5.0,
            ),
            CircleAvatar(
              backgroundColor: secondarybgcolor,
              radius: 5.0,
            ),
          ],
        ),
      ),
    );

    Widget card1() {
      return Container(
        padding: isLandscape
            ? EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0)
            : EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        width: double.infinity,
        height: 180,
        child: Card(
          elevation: 10.0,
          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Transform(
                      child: Icon(Icons.reply),
                      transform: Matrix4.rotationY(pi)),
                  onPressed: null),
              Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(text: 'Replied in ', children: [
                      TextSpan(text: 'Spirit of Alaska'),
                    ]),
                  ),
                  Text(
                      'Really high quality stuff man. Can you share your equipment? Considering a few upgrades :)'),
                ],
              ),
              Text('2h'),
            ],
          ),
        ),
      );
    }

    Widget card2() {
      return Container(
        padding: isLandscape
            ? EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0)
            : EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        width: double.infinity,
        height: 180,
        child: Card(
          elevation: 10.0,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        ..._topBar,
        isLandscape ? Container() : Bio(),
        isLandscape ? Container() : StatusBar(),
        isLandscape ? Container() : _activityBar,
        card1(),
        card2(),
      ]),
    );
  }
}
