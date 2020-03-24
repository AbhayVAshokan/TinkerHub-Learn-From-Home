import 'package:flutter/material.dart';

import '../widgets/constants.dart';
import '../widgets/bio.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    final topBar = [
      SizedBox(
        height: mediaQuery.padding.top,
      ),
      Padding(
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          ...topBar,
          Bio(),
        ],
      ),
    );
  }
}
