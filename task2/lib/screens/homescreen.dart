import 'package:flutter/material.dart';
import '../widgets/constants.dart';

import '../widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: mediaQuery.padding.top),
            Padding(
              padding: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 10.0,
                bottom: 20.0,
              ),
              child: TopBar(),
            ),
          ],
        ),
      ),
    );
  }
}
