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
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Transform(
                          child: Icon(
                            Icons.reply,
                            color: secondarybgcolor,
                            size: 30.0,
                          ),
                          transform: Matrix4.rotationY(pi)),
                    ),
                    onPressed: null),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Replied in ',
                              style: TextStyle(
                                color: secondarybgcolor,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              'Spirit of Alaska',
                              style: TextStyle(
                                color: headerColor,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: mediaQuery.size.width * 0.50,
                        child: Text(
                          'Really high quality stuff man. Can you share your equipment? Considering a few upgrades :)',
                          style: TextStyle(
                            color: secondarybgcolor,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    '2h',
                    style: TextStyle(
                      color: secondarybgcolor,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget card2() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: textColor,
                      blurRadius: 15.0,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
                child: Card(
                  elevation: 10.0,
                  child: Image.asset(
                    'lib/assets/images/feed_photo5.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Card(
                  elevation: 10.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Shared ',
                                    style: TextStyle(
                                      color: secondarybgcolor,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    'Nico\'s ',
                                    style: TextStyle(
                                      color: headerColor,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    'album',
                                    style: TextStyle(
                                      color: secondarybgcolor,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,
                                    color: textColor, size: 25.0),
                                Text(
                                  'Iceland',
                                  style: TextStyle(
                                    color: emphasisColor,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: mediaQuery.size.width * 0.37,
                              child: Text(
                                'Check out this dude! Amazing...',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: secondarybgcolor,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30.0, top: 10.0),
                        child: Text(
                          '4h',
                          style: TextStyle(
                            color: secondarybgcolor,
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
