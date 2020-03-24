import 'package:flutter/material.dart';

import '../widgets/constants.dart';
import '../screens/profilescreen.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.keyboard_backspace),
              iconSize: 30.0,
              onPressed: () {},
              color: textColor,
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: textColor,
                      offset: Offset(5.0, 5.0),
                      spreadRadius: 0.25,
                    ),
                  ]),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ProfileScreen()),
                ),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('lib/assets/images/profile_photo.jpeg'),
                  radius: 25.0,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30.0,
            right: 10.0,
            top: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hello Abhay!',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Today',
                      style: Theme.of(context).primaryTextTheme.headline2),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: secondarybgcolor,
                      spreadRadius: 0.25,
                    )
                  ],
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    size: 30.0,
                    color: textColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
