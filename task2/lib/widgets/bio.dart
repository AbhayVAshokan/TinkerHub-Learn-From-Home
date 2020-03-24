import 'package:flutter/material.dart';

import './constants.dart';

class Bio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    final profilePicture = Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 30.0,
            color: textColor,
            offset: Offset(7.0, 7.0),
            spreadRadius: 1,
          ),
        ],
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage('lib/assets/images/profile_photo.jpeg'),
        radius: isLandscape ? 75.0 : 40.0,
      ),
    );

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              profilePicture,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: isLandscape ? mediaQuery.size.width * 0.2 : 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Abhay V Ashokan',
                            overflow: TextOverflow.clip,
                            style: Theme.of(context).primaryTextTheme.headline1,
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 27,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.person_add,
                                size: 11.0,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'TinkerHub Learn From Home.\nMachine Learning Enthusiast.\nFlutter Developer. \nLike playing chess.',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                        overflow: TextOverflow.clip,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: secondarybgcolor,
                            size: 20.0,
                          ),
                          Text(
                            'Thrissur, India',
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
